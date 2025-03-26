//
//  BitcoreProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Moya
import Combine

class BitcoreProvider {
    private let provider: NetworkProvider<BitcoreTarget>

    init(configuration: NetworkProviderConfiguration) {
        provider = NetworkProvider<BitcoreTarget>(configuration: configuration)
    }

    var host: String {
        BitcoreTarget.balance(address: "").baseURL.hostOrUnknown
    }

    func getBalance(address: String) -> AnyPublisher<BitcoreBalance, MoyaError> {
        return provider
            .requestPublisher(.balance(address: address))
            .filterSuccessfulStatusAndRedirectCodes()
            .map(BitcoreBalance.self)
            .eraseToAnyPublisher()
    }

    func getUnspents(address: String) -> AnyPublisher<[BitcoreUtxo], MoyaError> {
        return provider
            .requestPublisher(.unspents(address: address))
            .filterSuccessfulStatusAndRedirectCodes()
            .map([BitcoreUtxo].self)
            .eraseToAnyPublisher()
    }

    func send(_ transaction: String) -> AnyPublisher<BitcoreSendResponse, MoyaError> {
        return provider
            .requestPublisher(.send(txHex: transaction))
            .filterSuccessfulStatusAndRedirectCodes()
            .map(BitcoreSendResponse.self)
            .eraseToAnyPublisher()
    }
}
