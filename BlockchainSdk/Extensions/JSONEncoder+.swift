//
//  JSONEncoder+.swift
//  BlockchainSdk
//
//

import Foundation

extension JSONEncoder {
    static var withSnakeCaseStrategy: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }
}
