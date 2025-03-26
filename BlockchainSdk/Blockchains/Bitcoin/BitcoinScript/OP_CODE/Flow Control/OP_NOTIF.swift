//
//  OP_NOTIF.swift
//  BitcoinKit
//
//

import Foundation

struct OpNotIf: OpCodeProtocol {
    var value: UInt8 { return 0x64 }
    var name: String { return "OP_NOTIF" }
}
