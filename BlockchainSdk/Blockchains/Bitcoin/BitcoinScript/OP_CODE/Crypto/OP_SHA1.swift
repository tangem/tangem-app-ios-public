//
//  OP_SHA1.swift
//  BitcoinKit
//
//

import Foundation
import CryptoSwift

// The input is hashed using SHA-1.
struct OpSha1: OpCodeProtocol {
    var value: UInt8 { return 0xa7 }
    var name: String { return "OP_SHA1" }
}
