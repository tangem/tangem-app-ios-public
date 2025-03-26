//
//  OP_VERIF.swift
//  BitcoinKit
//
//

import Foundation

// Transaction is invalid unless occuring in an unexecuted OP_IF branch
struct OpVerIf: OpCodeProtocol {
    var value: UInt8 { return 0x65 }
    var name: String { return "OP_VERIF" }
}
