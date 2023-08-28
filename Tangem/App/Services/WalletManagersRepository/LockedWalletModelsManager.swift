//
//  LockedWalletModelsManager.swift
//  Tangem
//
//  Created by Andrew Son on 28/07/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import BlockchainSdk

struct LockedWalletModelsManager: WalletModelsManager {
    var walletModels: [WalletModel] { [] }
    var walletModelsPublisher: AnyPublisher<[WalletModel], Never> { .just(output: []) }
    var signatureCountValidator: SignatureCountValidator? { nil }

    func updateAll(silent: Bool, completion: @escaping () -> Void) {
        completion()
    }
}
