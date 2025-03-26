//
//  OP_HASH256.swift
//  BitcoinKit
//
//

import Foundation

// The input is hashed two times with SHA-256.
struct OpHash256: OpCodeProtocol {
    var value: UInt8 { return 0xaa }
    var name: String { return "OP_HASH256" }
}
