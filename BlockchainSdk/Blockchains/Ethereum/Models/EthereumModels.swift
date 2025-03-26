//
//  EthereumModels.swift
//  BlockchainSdk
//
//

import Foundation
import BigInt

/// Final Ethereum response that contain all information about address
struct EthereumInfoResponse {
    let balance: Decimal
    let tokenBalances: [Token: Result<Decimal, Error>]
    let txCount: Int
    let pendingTxCount: Int
    var pendingTxs: [PendingTransaction]
}

struct EthereumEIP1559FeeResponse {
    let gasLimit: BigUInt
    let fees: (low: ETHFee, market: ETHFee, fast: ETHFee)

    struct ETHFee {
        let max: BigUInt
        let priority: BigUInt
    }
}

struct EthereumLegacyFeeResponse {
    let gasLimit: BigUInt
    let lowGasPrice: BigUInt
    let marketGasPrice: BigUInt
    let fastGasPrice: BigUInt
}

public struct EthereumFeeHistory {
    /// for pending block
    public let baseFee: BigUInt

    public let lowBaseFee: BigUInt
    public let marketBaseFee: BigUInt
    public let fastBaseFee: BigUInt

    public let lowPriorityFee: BigUInt
    public let marketPriorityFee: BigUInt
    public let fastPriorityFee: BigUInt
}
