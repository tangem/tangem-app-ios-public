//
//  VeChainNetworkProvider.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

struct VeChainNetworkProvider {
    private let baseURL: URL
    private let provider: NetworkProvider<VeChainTarget>

    init(
        baseURL: URL,
        configuration: NetworkProviderConfiguration
    ) {
        self.baseURL = baseURL
        provider = NetworkProvider<VeChainTarget>(configuration: configuration)
    }

    func getAccountInfo(address: String) -> AnyPublisher<VeChainNetworkResult.AccountInfo, Error> {
        return requestPublisher(for: .viewAccount(address: address))
    }

    func getBlockInfo(
        request: VeChainNetworkParams.BlockInfo
    ) -> AnyPublisher<VeChainNetworkResult.BlockInfo, Error> {
        return requestPublisher(for: .viewBlock(request: request))
    }

    func callContract(
        contractCall: VeChainNetworkParams.ContractCall
    ) -> AnyPublisher<VeChainNetworkResult.ContractCall, Error> {
        return requestPublisher(for: .callContract(contractCall: contractCall))
    }

    func sendTransaction(
        _ rawTransaction: String
    ) -> AnyPublisher<VeChainNetworkResult.Transaction, Error> {
        return requestPublisher(for: .sendTransaction(rawTransaction: rawTransaction))
    }

    func getTransactionStatus(
        request: VeChainNetworkParams.TransactionStatus
    ) -> AnyPublisher<VeChainNetworkResult.TransactionInfo, Error> {
        return requestPublisher(
            for: .transactionStatus(request: request)
        )
    }

    private func requestPublisher<T: Decodable>(
        for target: VeChainTarget.Target
    ) -> AnyPublisher<T, Swift.Error> {
        return provider.requestPublisher(VeChainTarget(baseURL: baseURL, target: target))
            .filterSuccessfulStatusCodes()
            .map(T.self)
            .eraseError()
            .eraseToAnyPublisher()
    }
}

// MARK: - HostProvider protocol conformance

extension VeChainNetworkProvider: HostProvider {
    var host: String {
        baseURL.hostOrUnknown
    }
}
