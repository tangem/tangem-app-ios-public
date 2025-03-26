//
//  ETHError.swift
//  BlockchainSdk
//
//

import Foundation

public enum ETHError: Error, LocalizedError, DetailedError {
    case failedToParseTxCount
    case failedToParseBalance(value: String, address: String, decimals: Int)
    case failedToParseGasLimit
    case failedToParseFeeHistory
    case failedToParseAllowance
    case gasRequiredExceedsAllowance
    case unsupportedFeature

    public var errorDescription: String? {
        switch self {
        case .failedToParseTxCount, .failedToParseBalance, .failedToParseAllowance, .failedToParseFeeHistory:
            return Localization.genericErrorCode(errorCodeDescription)
        case .failedToParseGasLimit: // TODO: refactor
            return Localization.genericErrorCode(errorCodeDescription)
        case .gasRequiredExceedsAllowance:
            return Localization.ethGasRequiredExceedsAllowance
        case .unsupportedFeature:
            return "unsupportedFeature"
        }
    }

    public var detailedDescription: String? {
        switch self {
        case .failedToParseBalance(let value, let address, let decimals):
            return "value:\(value), address:\(address), decimals:\(decimals)"
        default:
            return nil
        }
    }

    private var errorCodeDescription: String {
        "eth_error \(errorCode)"
    }

    private var errorCode: Int {
        switch self {
        case .failedToParseTxCount:
            return 1
        case .failedToParseBalance:
            return 2
        case .failedToParseGasLimit:
            return 3
        case .failedToParseAllowance:
            return 4
        case .gasRequiredExceedsAllowance:
            return 5
        case .unsupportedFeature:
            return 6
        case .failedToParseFeeHistory:
            return 7
        }
    }
}
