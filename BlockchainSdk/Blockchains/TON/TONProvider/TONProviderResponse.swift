//
//  TONProviderResponse.swift
//  BlockchainSdk
//
//

import Foundation

/// Base TON provider response
struct TONProviderResponse<R: Decodable>: Decodable {
    /// Success status
    let ok: Bool

    /// Decodable result
    let result: R

    /// Description error
    let error: String?

    /// Response code (Not transport)
    let code: Int?
}
