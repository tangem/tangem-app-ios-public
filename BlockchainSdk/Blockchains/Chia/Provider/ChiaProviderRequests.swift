//
//  ChiaProviderRequests.swift
//  BlockchainSdk
//
//

import Foundation

struct ChiaPuzzleHashBody: Encodable {
    let puzzleHash: String
}

struct ChiaTransactionBody: Encodable {
    let spendBundle: ChiaSpendBundle
}

struct ChiaFeeEstimateBody: Encodable {
    let cost: Int64
    let targetTimes: [Int]
}
