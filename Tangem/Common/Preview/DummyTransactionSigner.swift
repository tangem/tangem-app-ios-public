//
//  DummyTransactionSigner.swift
//  Tangem
//
//  Created by Andrew Son on 04/08/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk
import Combine
import BlockchainSdk

fileprivate class DummyTransactionSigner: TransactionSigner {
    private let privateKey = Data(repeating: 0, count: 32)
    
    func sign(hashes: [Data], cardId: String, walletPublicKey: Wallet.PublicKey) -> AnyPublisher<[Data], Error> {
        Fail(error: WalletError.failedToGetFee).eraseToAnyPublisher()
    }
    
    func sign(hash: Data, cardId: String, walletPublicKey: Wallet.PublicKey) -> AnyPublisher<Data, Error> {
        Fail(error: WalletError.failedToGetFee).eraseToAnyPublisher()
    }
}
