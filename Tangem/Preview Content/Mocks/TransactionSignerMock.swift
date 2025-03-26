//
//  TransactionSignerMock.swift
//  Tangem
//
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
