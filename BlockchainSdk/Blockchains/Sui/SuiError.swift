//
// SuiError.swift
// BlockchainSdk
//
//

import Foundation

struct SuiError {
    enum CodingError: Error {
        case failedEncoding
        case failedDecoding
    }
}
