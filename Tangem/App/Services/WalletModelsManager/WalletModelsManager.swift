//
//  WalletModelsManager.swift
//  Tangem
//
//

import Combine

protocol WalletModelsManager {
    var walletModels: [WalletModel] { get }
    var walletModelsPublisher: AnyPublisher<[WalletModel], Never> { get }

    func updateAll(silent: Bool, completion: @escaping () -> Void)
}
