//
//  Chia+Int64.swift
//  BlockchainSdk
//
//

import Foundation
import BigInt

extension Int64 {
    /// Convert amount value for use in ClvmProgram for serialization
    /// - Returns: Binary data encoded
    /// For description verify example Int.Type converted: 0..127 == 0x00..0x7F | -128..-1 == 0x80..0xFF
    var chiaEncoded: Data {
        let bigEndianData = withUnsafeBytes(of: bigEndian) { Data($0) }
        let unsafeDataValue = bigEndianData.drop(while: { $0 == 0x00 })
        let serializeValue = BigInt(self).serialize()
        return (unsafeDataValue.first ?? 0x00) >= 0x80 ? serializeValue : serializeValue.dropFirst()
    }
}
