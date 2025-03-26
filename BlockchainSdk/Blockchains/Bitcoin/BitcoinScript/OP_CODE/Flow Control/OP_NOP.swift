//
//  OP_NOP.swift
//  BitcoinKit
//
//

import Foundation

// do nothing
struct OpNop: OpCodeProtocol {
    var value: UInt8 { return 0x61 }
    var name: String { return "OP_NOP" }
}
