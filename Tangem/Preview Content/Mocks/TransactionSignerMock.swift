//
//  TransactionSignerMock.swift
//  Tangem
//
//  Created by Andrey Chukavin on 15.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine
import BlockchainSdk

class TransactionSignerMock: TransactionSigner {
    func sign(hashes: [Data], walletPublicKey: BlockchainSdk.Wallet.PublicKey) -> AnyPublisher<[Data], Error> {
        .anyFail(error: "Error")
    }

    func sign(hash: Data, walletPublicKey: BlockchainSdk.Wallet.PublicKey) -> AnyPublisher<Data, Error> {
        .anyFail(error: "Error")
    }
}
