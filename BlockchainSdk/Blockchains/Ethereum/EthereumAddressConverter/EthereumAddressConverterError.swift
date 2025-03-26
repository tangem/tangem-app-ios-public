//
//  EthereumAddressConverterError.swift
//  BlockchainSdk
//
//

import Foundation

enum EthereumAddressConverterError: LocalizedError {
    case failedToConvertAddress(error: Error)

    var errorDescription: String? {
        switch self {
        case .failedToConvertAddress(error: let error):
            return "failedToConvertAddress: \(error.localizedDescription)"
        }
    }
}
