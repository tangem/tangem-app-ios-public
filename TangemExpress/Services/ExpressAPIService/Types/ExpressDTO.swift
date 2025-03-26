//
//  ExpressDTO.swift
//  TangemExpress
//
//

import Foundation

enum ExpressDTO {
    // MARK: - Common

    struct Currency: Codable {
        let contractAddress: String
        let network: String
    }

    // MARK: - Error

    enum APIError {
        struct Response: Decodable {
            let error: ExpressAPIError
        }
    }
}
