//
//  OP_VER.swift
//  BitcoinKit
//
//

import Foundation

struct OpVer: OpCodeProtocol {
    var value: UInt8 { return 0x62 }
    var name: String { return "OP_VER" }
}
