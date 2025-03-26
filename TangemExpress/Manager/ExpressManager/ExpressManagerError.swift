//
//  ExpressManagerError.swift
//  TangemExpress
//
//

import Foundation

public enum ExpressManagerError: String, LocalizedError {
    case amountNotFound
    case contractAddressNotFound
    case availablePairNotFound
    case pairNotFound
    case selectedProviderNotFound
    case quotesNotFound
    case availableQuotesForProviderNotFound
    case objectReleased

    public var errorDescription: String? {
        rawValue
    }
}
