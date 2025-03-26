//
//  ExpressExchangeDataDecoder.swift
//  TangemExpress
//
//

import Foundation

public protocol ExpressExchangeDataDecoder {
    func decode<T: Decodable>(txDetailsJson: String, signature: String) throws -> T
}
