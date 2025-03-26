//
//  EthereumAdditionalInfoProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

protocol EthereumAdditionalInfoProvider {
    func getEthTxsInfo(address: String) -> AnyPublisher<EthereumTransactionResponse, Error>
    func getSignatureCount(address: String) -> AnyPublisher<Int, Error>
}

struct EthereumTransactionResponse {
    let balance: Decimal
    let pendingTxs: [PendingTransaction]
}
