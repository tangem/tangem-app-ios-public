//
//  VisaAPIError.swift
//  TangemVisa
//
//

import Foundation

struct VisaAPIError: Decodable, LocalizedError {
    let status: Int
    let message: String
    let timestamp: String

    var errorDescription: String? {
        return """
        Status: \(status)
        Message: \(message)
        Timestamp: \(timestamp)
        """
    }
}
