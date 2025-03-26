//
//  Data+.swift
//  Tangem
//
//

import Foundation

extension Data {
    static func randomData(count: Int) -> Data {
        return Data(repeating: UInt8.random(in: 0 ... 255), count: count)
    }
}
