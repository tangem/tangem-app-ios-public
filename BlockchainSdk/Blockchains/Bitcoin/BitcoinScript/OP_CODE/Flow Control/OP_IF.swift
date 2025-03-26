//
//  OP_IF.swift
//  BitcoinKit
//
//

import Foundation

struct OpIf: OpCodeProtocol {
    var value: UInt8 { return 0x63 }
    var name: String { return "OP_IF" }
}
