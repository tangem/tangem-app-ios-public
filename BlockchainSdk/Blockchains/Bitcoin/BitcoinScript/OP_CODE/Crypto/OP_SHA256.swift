//
//  OP_SHA256.swift
//  BitcoinKit
//
//

import Foundation

// The input is hashed using SHA-256.
struct OpSha256: OpCodeProtocol {
    var value: UInt8 { return 0xa8 }
    var name: String { return "OP_SHA256" }
}
