//
//  OP_CODESEPARATOR.swift
//  BitcoinKit
//
//

import Foundation

// All of the signature checking words will only match signatures to the data after the most recently-executed OP_CODESEPARATOR.
struct OpCodeSeparator: OpCodeProtocol {
    var value: UInt8 { return 0xab }
    var name: String { return "OP_CODESEPARATOR" }
}
