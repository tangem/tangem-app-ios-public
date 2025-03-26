//
//  OP_RIPEMD160.swift
//  BitcoinKit
//
//

import Foundation

// The input is hashed using RIPEMD-160.
struct OpRipemd160: OpCodeProtocol {
    var value: UInt8 { return 0xa6 }
    var name: String { return "OP_RIPEMD160" }
}
