//
//  Log+.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

extension Log {
    @inline(__always)
    static func log(file: StaticString = #fileID, line: UInt = #line, _ message: @autoclosure () -> String) {
        debug("\(file):\(line): \(message())")
    }
}
