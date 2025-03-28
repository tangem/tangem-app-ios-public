//
//  EthereumNetworkProvider.swift
//  BlockchainSdk
//
//

import Combine
import BigInt

public protocol EthereumNetworkProvider {
    func getFee(destination: String, value: String?, data: Data?) -> AnyPublisher<[Fee], Error>
    func getGasPrice() -> AnyPublisher<BigUInt, Error>
    func getGasLimit(to: String, from: String, value: String?, data: String?) -> AnyPublisher<BigUInt, Error>
    func getFeeHistory() -> AnyPublisher<EthereumFeeHistory, Error>

    func getAllowance(owner: String, spender: String, contractAddress: String) -> AnyPublisher<Decimal, Error>
    func getBalance(_ address: String) -> AnyPublisher<Decimal, Error>
    func getTokensBalance(_ address: String, tokens: [Token]) -> AnyPublisher<[Token: Result<Decimal, Error>], Error>
    func getTxCount(_ address: String) -> AnyPublisher<Int, Error>
    func getPendingTxCount(_ address: String) -> AnyPublisher<Int, Error>
}
