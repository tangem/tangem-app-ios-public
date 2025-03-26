//
//  TronStakeKitTransactionHelper.swift
//  BlockchainSdk
//
//

import Foundation

struct TronStakeKitTransactionHelper {
    func prepareForSign(_ unsignedData: String) throws -> TronPresignedInput {
        let rawData = try Protocol_Transaction.raw(serializedData: Data(hex: unsignedData))
        let hash = try rawData.serializedData().sha256()
        return .init(rawData: rawData, hash: hash)
    }
}
