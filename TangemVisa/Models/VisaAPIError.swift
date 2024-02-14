//
//  VisaAPIError.swift
//  TangemVisa
//
//  Created by Andrew Son on 24/01/24.
//  Copyright © 2024 Tangem AG. All rights reserved.
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
