//
//  OP_ENDIF.swift
//  BitcoinKit
//
//

import Foundation

struct OpEndIf: OpCodeProtocol {
    var value: UInt8 { return 0x68 }
    var name: String { return "OP_ENDIF" }
}
