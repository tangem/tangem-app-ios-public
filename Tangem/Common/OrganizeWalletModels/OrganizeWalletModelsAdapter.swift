//
//  OrganizeWalletModelsAdapter.swift
//  Tangem
//
//  Created by Andrey Fedorov on 01.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import struct BlockchainSdk.Amount // TODO: Andrey Fedorov - Remove after migration to actual types from the domain (not DTO) layer
import enum BlockchainSdk.Blockchain // TODO: Andrey Fedorov - Remove after migration to actual types from the domain (not DTO) layer

final class OrganizeWalletModelsAdapter {
    typealias Section = OrganizeWalletModelsSection<SectionType>
    typealias UserToken = UserTokenList.Token // TODO: Andrey Fedorov - Replace with actual types from the domain (not DTO) layer
    typealias SortingType = UserTokenList.SortType // TODO: Andrey Fedorov - Replace with actual types from the domain (not DTO) layer
    typealias GroupingType = UserTokenList.GroupType // TODO: Andrey Fedorov - Replace with actual types from the domain (not DTO) layer

    enum SectionType {
        case group(by: BlockchainNetwork)
        case plain
    }

    private let userTokenListManager: UserTokenListManager

    init(
        userTokenListManager: UserTokenListManager
    ) {
        self.userTokenListManager = userTokenListManager
    }

    func organizedWalletModels(
        from walletModels: some Publisher<[WalletModel], Never>
    ) -> some Publisher<[Section], Never> {
        return walletModels
            .combineLatest(userTokenListManager.userTokenList)
            .map { walletModels, userTokenList in
                return Self.makeSections(
                    walletModels: walletModels,
                    userTokens: userTokenList.tokens,
                    sortingType: userTokenList.sort,
                    groupingType: userTokenList.group
                )
            }
    }

    private static func makeSections(
        walletModels: [WalletModel],
        userTokens: [UserToken],
        sortingType: SortingType,
        groupingType: GroupingType
    ) -> [Section] {
        let walletModelsKeyedByID = walletModels
            .keyedFirst(by: \.id)

        switch groupingType {
        case .network:
            return makeGroupedSections(
                walletModelsKeyedByID: walletModelsKeyedByID,
                userTokens: userTokens,
                sortingType: sortingType
            )
        case .none:
            return makePlainSections(
                walletModelsKeyedByID: walletModelsKeyedByID,
                userTokens: userTokens,
                sortingType: sortingType
            )
        }
    }

    private static func makeGroupedSections(
        walletModelsKeyedByID: [WalletModel.ID: WalletModel],
        userTokens: [UserToken],
        sortingType: SortingType
    ) -> [Section] {
        let blockchainNetworks = userTokens
            .unique(by: \.blockchainNetwork)
            .compactMap(\.blockchainNetwork)

        let userTokensGroupedByBlockchainNetworks: [BlockchainNetwork: [UserToken]] = userTokens
            .reduce(into: [:]) { partialResult, element in
                guard let blockchainNetwork = element.blockchainNetwork else { return }

                partialResult[blockchainNetwork, default: []].append(element)
            }

        return blockchainNetworks.map { blockchainNetwork in
            let userTokensForBlockchainNetwork = userTokensGroupedByBlockchainNetworks[blockchainNetwork, default: []]
            let walletModelsForBlockchainNetwork = userTokensForBlockchainNetwork.compactMap { token -> WalletModel? in
                guard let walletModelID = token.walletModelID else { return nil }

                return walletModelsKeyedByID[walletModelID]
            }
            let sortedWalletModelsForBlockchainNetwork = self.walletModels(
                walletModelsForBlockchainNetwork,
                sortedBy: sortingType
            )
            return Section(
                model: .group(by: blockchainNetwork),
                items: sortedWalletModelsForBlockchainNetwork
            )
        }
    }

    private static func makePlainSections(
        walletModelsKeyedByID: [WalletModel.ID: WalletModel],
        userTokens: [UserToken],
        sortingType: SortingType
    ) -> [Section] {
        let walletModels = userTokens.compactMap { token -> WalletModel? in
            guard let walletModelID = token.walletModelID else { return nil }

            return walletModelsKeyedByID[walletModelID]
        }
        let sortedWalletModels = self.walletModels(walletModels, sortedBy: sortingType)

        return [
            Section(
                model: .plain,
                items: sortedWalletModels
            ),
        ]
    }

    private static func walletModels(
        _ walletModels: [WalletModel],
        sortedBy sortType: UserTokenList.SortType
    ) -> [WalletModel] {
        switch sortType {
        case .manual:
            // Keep existing sort order
            return walletModels
        case .balance:
            // TODO: Andrey Fedorov - Fetch balances and sort accordingly
            return walletModels
        }
    }
}

// MARK: - Convenience extensions

private extension UserTokenList.Token { // TODO: Andrey Fedorov - Remove after migration to actual types from the domain (not DTO) layer
    var blockchainNetwork: BlockchainNetwork? {
        guard let blockchain = Blockchain(from: networkId) else { return nil }

        return BlockchainNetwork(blockchain, derivationPath: derivationPath)
    }

    var walletModelID: WalletModel.ID? {
        guard let blockchainNetwork = blockchainNetwork else { return nil }

        return WalletModel.Id(blockchainNetwork: blockchainNetwork, amountType: amountType).id
    }

    private var amountType: Amount.AmountType {
        if let contractAddress = contractAddress {
            return .token(
                value: .init(
                    name: name,
                    symbol: symbol,
                    contractAddress: contractAddress,
                    decimalCount: decimals,
                    id: id,
                    customIconUrl: nil,
                    exchangeable: nil
                )
            )
        } else {
            return .coin
        }
    }
}
