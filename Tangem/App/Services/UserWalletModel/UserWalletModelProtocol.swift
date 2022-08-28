//
//  UserWalletModelProtocol.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import BlockchainSdk
import Combine

protocol UserWalletModelProtocol {
    /// Public until managers factory
    var userTokenListManager: UserTokenListManager { get }
    var walletListManager: WalletListManager { get }

    func updateUserWalletModel(with config: UserWalletConfig)

    func getWalletModels() -> [WalletModel]
    func subscribeWalletModels() -> AnyPublisher<[WalletModel], Never>

    func getNonDerivationEntries() -> [StorageEntry]
    func subscribeNonDerivationEntries() -> AnyPublisher<[StorageEntry], Never>

    func canManage(amountType: Amount.AmountType, blockchainNetwork: BlockchainNetwork) -> Bool
    func add(entries: [StorageEntry], completion: @escaping (Result<UserTokenList, Error>) -> Void)
    func remove(items: [UserWalletModel.RemoveItem], completion: @escaping (Result<Void, Error>) -> Void)
    func clearRepository(result: @escaping (Result<UserTokenList, Error>) -> Void)

    func updateAllWalletModelsWithCallUpdateInWalletModel(showProgressLoading: Bool)
}
