//
//  SupportedBlockchainsPreferencesViewModel.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

class SupportedBlockchainsPreferencesViewModel: ObservableObject {
    @Published var blockchainViewModels: [DefaultToggleRowViewModel] = []
    private let featureStorage = FeatureStorage.instance

    init(
        blockchainIds: Set<Item>,
        featureStorageKeyPath: ReferenceWritableKeyPath<FeatureStorage, [String]>
    ) {
        blockchainViewModels = blockchainIds
            .map { coinId in
                DefaultToggleRowViewModel(
                    title: coinId.name,
                    isOn: .init(
                        root: self,
                        default: false,
                        get: { root in
                            return root.featureStorage[keyPath: featureStorageKeyPath].contains(coinId.id)
                        }, set: { root, newValue in
                            if newValue {
                                root.featureStorage[keyPath: featureStorageKeyPath].append(coinId.id)
                            } else {
                                root.featureStorage[keyPath: featureStorageKeyPath].removeAll(where: { $0 == coinId.id })
                            }
                        }
                    )
                )
            }
    }
}

extension SupportedBlockchainsPreferencesViewModel {
    struct Item: Hashable {
        let name: String
        let id: String
    }
}
