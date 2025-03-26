//
//  OP_VERNOTIF.swift
//  BitcoinKit
//
//

import Foundation

struct OpVerNotIf: OpCodeProtocol {
    var value: UInt8 { return 0x66 }
    var name: String { return "OP_VERNOTIF" }
}
