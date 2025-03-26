//
//  TONProviderRequest.swift
//  BlockchainSdk
//
//

import Foundation

/// Base TON provider request
struct TONProviderRequest<P: Encodable>: Encodable {
    /// Identifier request
    let id: String

    /// Method run jsonRPC
    let method: Method

    /// Version jsonRPC
    let jsonrpc: String = "2.0"

    /// Parameters request
    let params: P
}

extension TONProviderRequest {
    enum Method: String, Encodable {
        case getAddressInformation
        case getAddressBalance
        case runGetMethod
        case getWalletInformation
        case estimateFee
        case sendBoc
        case sendBocReturnHash
    }
}
