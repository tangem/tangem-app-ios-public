//
//  AddCustomTokenNetworksListViewModel.swift
//  Tangem
//
//

import Combine
import SwiftUI
import BlockchainSdk

final class AddCustomTokenNetworksListViewModel: ObservableObject {
    // MARK: - ViewState

    @Published var itemViewModels: [AddCustomTokenNetworksListItemViewModel] = []

    // MARK: - Dependencies

    weak var delegate: AddCustomTokenNetworkSelectorDelegate?

    init(selectedBlockchainNetworkId: String?, blockchains: [Blockchain]) {
        itemViewModels = blockchains.map { blockchain in
            AddCustomTokenNetworksListItemViewModel(
                networkId: blockchain.networkId,
                iconName: blockchain.iconNameFilled,
                networkName: blockchain.displayName,
                currencySymbol: blockchain.currencySymbol,
                isSelected: blockchain.networkId == selectedBlockchainNetworkId
            ) { [weak self] in
                self?.didTapNetwork(blockchain)
            }
        }
    }

    func didTapNetwork(_ blockchain: Blockchain) {
        for itemViewModel in itemViewModels {
            itemViewModel.isSelected = (blockchain.networkId == itemViewModel.networkId)
        }

        delegate?.didSelectNetwork(networkId: blockchain.networkId)
    }
}
