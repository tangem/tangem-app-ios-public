//
//  PolygonScanAPIError.swift
//  BlockchainSdk
//
//

import Foundation

enum PolygonScanAPIError: Error {
    case maxRateLimitReached
    case endOfTransactionHistoryReached
    case unknown
}
