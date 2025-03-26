//
//  VisaParserError.swift
//  TangemVisa
//
//

import Foundation

public enum VisaParserError: String, LocalizedError {
    case addressResponseDoesntContainAddress
    case noValidAddress
    case limitsResponseWrongLength
    case limitWrongLength
    case limitWrongSingleLimitItemsCount
    case limitWrongSingleLimitAmountsCount

    public var errorDescription: String? {
        rawValue
    }
}
