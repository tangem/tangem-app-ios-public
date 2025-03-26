//
//  EthereumNetworkProvider+.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import BigInt

extension EthereumNetworkProvider {
    func getFee(gasLimit: BigUInt, supportsEIP1559: Bool, gasPrice: BigUInt? = nil) async throws -> EthereumFeeParameters {
        if supportsEIP1559 {
            let feeHistory = try await getFeeHistory().async()
            return EthereumEIP1559FeeParameters(
                gasLimit: gasLimit,
                baseFee: feeHistory.marketBaseFee,
                priorityFee: feeHistory.marketPriorityFee
            )
        }

        if let gasPrice {
            return EthereumLegacyFeeParameters(gasLimit: gasLimit, gasPrice: gasPrice)
        }

        let gasPrice = try await getGasPrice().async()
        return EthereumLegacyFeeParameters(gasLimit: gasLimit, gasPrice: gasPrice)
    }
}
