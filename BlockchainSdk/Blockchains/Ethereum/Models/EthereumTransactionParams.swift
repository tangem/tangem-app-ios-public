//
//  EthereumTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation
import BigInt

public struct EthereumTransactionParams: TransactionParams {
    let data: Data?
    let nonce: Int?

    public init(data: Data? = nil, nonce: Int? = nil) {
        self.data = data
        self.nonce = nonce
    }
}

extension EthereumTransactionParams {
    func with(nonce: Int) -> EthereumTransactionParams {
        EthereumTransactionParams(data: data, nonce: nonce)
    }
}
