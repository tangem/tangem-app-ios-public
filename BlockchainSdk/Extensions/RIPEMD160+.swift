//
//  RIPEMD160+.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

extension RIPEMD160 {
    static func hash(_ message: Data) -> Data {
        var md = RIPEMD160()
        md.update(data: message)
        return md.finalize()
    }
}
