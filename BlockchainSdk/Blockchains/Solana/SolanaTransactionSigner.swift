//
//  SolanaTransactionSigner.swift
//  BlockchainSdk
//
//

import Foundation
import Combine
import SolanaSwift

class SolanaTransactionSigner: Signer {
    var publicKey: PublicKey {
        PublicKey(data: walletPublicKey.blockchainKey)!
    }

    let transactionSigner: TransactionSigner
    let walletPublicKey: Wallet.PublicKey

    var subscriptions: Set<AnyCancellable> = []

    init(transactionSigner: TransactionSigner, walletPublicKey: Wallet.PublicKey) {
        self.transactionSigner = transactionSigner
        self.walletPublicKey = walletPublicKey
    }

    func sign(message: Data, completion: @escaping (Result<Data, Error>) -> Void) {
        transactionSigner.sign(hash: message, walletPublicKey: walletPublicKey)
            .sink { result in
                switch result {
                case .failure(let error):
                    completion(.failure(error))
                case .finished:
                    break
                }
            } receiveValue: { data in
                completion(.success(data))
            }
            .store(in: &subscriptions)
    }
}
