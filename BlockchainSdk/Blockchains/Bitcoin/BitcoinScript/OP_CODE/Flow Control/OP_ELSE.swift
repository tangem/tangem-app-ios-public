//
//  OP_ELSE.swift
//  BitcoinKit
//
//

import Foundation

struct OpElse: OpCodeProtocol {
    var value: UInt8 { return 0x67 }
    var name: String { return "OP_ELSE" }
}
