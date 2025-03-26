//
//  WalletModelsManagerMock.swift
//  Tangem
//
//

import Foundation
import Combine

struct WalletModelsManagerMock: WalletModelsManager {
    var walletModels: [WalletModel] { [] }
    var walletModelsPublisher: AnyPublisher<[WalletModel], Never> { .just(output: []) }

    func updateAll(silent: Bool, completion: @escaping () -> Void) {}
}
