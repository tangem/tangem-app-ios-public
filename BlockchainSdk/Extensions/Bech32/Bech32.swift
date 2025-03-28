//
//  Bech32.swift
//
//
//  Base32 address format for native v0-16 witness outputs implementation
//  BECH32 - https://github.com/bitcoin/bips/blob/master/bip-0173.mediawiki
//  BECH32M - https://github.com/bitcoin/bips/blob/master/bip-0350.mediawiki#L4
//  Inspired by Pieter Wuille C++ implementation
//

import Foundation

/// Bech32 checksum implementation
class Bech32 {
    private let gen: [UInt32] = [0x3b6a57b2, 0x26508e6d, 0x1ea119fa, 0x3d4233dd, 0x2a1462b3]
    /// Bech32 checksum delimiter
    private let checksumMarker: String = "1"
    /// Bech32 character set for encoding
    private let encCharset: Data = "qpzry9x8gf2tvdw0s3jn54khce6mua7l".data(using: .utf8)!
    /// Bech32 character set for decoding
    private let decCharset: [Int8] = [
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
        15, -1, 10, 17, 21, 20, 26, 30, 7, 5, -1, -1, -1, -1, -1, -1,
        -1, 29, -1, 24, 13, 25, 9, 8, 23, -1, 18, 22, 31, 27, 19, -1,
        1, 0, 3, 16, 11, 28, 12, 14, 6, 4, 2, -1, -1, -1, -1, -1,
        -1, 29, -1, 24, 13, 25, 9, 8, 23, -1, 18, 22, 31, 27, 19, -1,
        1, 0, 3, 16, 11, 28, 12, 14, 6, 4, 2, -1, -1, -1, -1, -1,
    ]

    private let variant: Variant

    // MARK: - Init

    init(variant: Variant = .bech32) {
        self.variant = variant
    }

    // MARK: - Implementation

    /// Find the polynomial with value coefficients mod the generator as 30-bit.
    private func polymod(_ values: Data) -> UInt32 {
        var chk: UInt32 = 1
        for v in values {
            let top = (chk >> 25)
            chk = (chk & 0x1ffffff) << 5 ^ UInt32(v)
            for i: UInt8 in 0 ..< 5 {
                chk ^= ((top >> i) & 1) == 0 ? 0 : gen[Int(i)]
            }
        }

        return chk
    }

    /// Expand a HRP for use in checksum computation.
    private func expandHrp(_ hrp: String) -> Data {
        guard let hrpBytes = hrp.data(using: .utf8) else {
            return Data()
        }

        var result = Data(repeating: 0x00, count: hrpBytes.count * 2 + 1)
        for (i, c) in hrpBytes.enumerated() {
            result[i] = c >> 5
            result[i + hrpBytes.count + 1] = c & 0x1f
        }
        result[hrp.count] = 0
        return result
    }

    /// Verify checksum
    private func verifyChecksum(hrp: String, checksum: Data) -> Bool {
        var data = expandHrp(hrp)
        data.append(checksum)
        return polymod(data) == variant.rawValue
    }

    /// Create checksum
    private func createChecksum(hrp: String, values: Data) -> Data {
        var enc = expandHrp(hrp)
        enc.append(values)
        enc.append(Data(repeating: 0x00, count: 6))
        let mod: UInt32 = polymod(enc) ^ variant.rawValue
        var ret = Data(repeating: 0x00, count: 6)
        for i in 0 ..< 6 {
            ret[i] = UInt8((mod >> (5 * (5 - i))) & 31)
        }
        return ret
    }

    /// Encode Bech32 string
    func encode(_ hrp: String, values: Data) -> String {
        guard let convertedValues = try? convertBits(data: values.bytes, fromBits: 8, toBits: 5, pad: true) else {
            assertionFailure()
            return ""
        }

        var combined = Data(convertedValues)
        let checksum = createChecksum(hrp: hrp, values: combined)
        combined.append(checksum)
        guard let hrpBytes = hrp.data(using: .utf8) else { return "" }
        var ret = hrpBytes
        ret.append("1".data(using: .utf8)!)

        for i in combined {
            ret.append(encCharset[Int(i)])
        }
        return String(data: ret, encoding: .utf8) ?? ""
    }

    /// Decode Bech32 string
    func decode(_ str: String) throws -> (hrp: String, checksum: Data) {
        guard let strBytes = str.data(using: .utf8) else {
            throw DecodingError.nonUTF8String
        }
        guard strBytes.count <= 90 else {
            throw DecodingError.stringLengthExceeded
        }
        var lower = false
        var upper = false
        for c in strBytes {
            // printable range
            if c < 33 || c > 126 {
                throw DecodingError.nonPrintableCharacter
            }
            // 'a' to 'z'
            if c >= 97, c <= 122 {
                lower = true
            }
            // 'A' to 'Z'
            if c >= 65, c <= 90 {
                upper = true
            }
        }
        if lower, upper {
            throw DecodingError.invalidCase
        }
        guard let pos = str.range(of: checksumMarker, options: .backwards)?.lowerBound else {
            throw DecodingError.noChecksumMarker
        }
        let intPos: Int = str.distance(from: str.startIndex, to: pos)
        guard intPos >= 1 else {
            throw DecodingError.incorrectHrpSize
        }
        guard intPos + 7 <= str.count else {
            throw DecodingError.incorrectChecksumSize
        }
        let vSize: Int = str.count - 1 - intPos
        var values = Data(repeating: 0x00, count: vSize)
        for i in 0 ..< vSize {
            let c = strBytes[i + intPos + 1]
            let decInt = decCharset[Int(c)]
            if decInt == -1 {
                throw DecodingError.invalidCharacter
            }
            values[i] = UInt8(decInt)
        }
        let hrp = String(str[..<pos]).lowercased()
        guard verifyChecksum(hrp: hrp, checksum: values) else {
            throw DecodingError.checksumMismatch
        }
        return (hrp, Data(values[..<(vSize - 6)]))
    }

    /// Decode long Bech32 string
    func decodeLong(_ str: String) throws -> (hrp: String, checksum: Data) {
        guard let strBytes = str.data(using: .utf8) else {
            throw DecodingError.nonUTF8String
        }
        //        guard strBytes.count <= 90 else {
        //            throw DecodingError.stringLengthExceeded
        //        }

        var lower = false
        var upper = false
        for c in strBytes {
            // printable range
            if c < 33 || c > 126 {
                throw DecodingError.nonPrintableCharacter
            }
            // 'a' to 'z'
            if c >= 97, c <= 122 {
                lower = true
            }
            // 'A' to 'Z'
            if c >= 65, c <= 90 {
                upper = true
            }
        }
        if lower, upper {
            throw DecodingError.invalidCase
        }
        guard let pos = str.range(of: checksumMarker, options: .backwards)?.lowerBound else {
            throw DecodingError.noChecksumMarker
        }
        let intPos: Int = str.distance(from: str.startIndex, to: pos)
        guard intPos >= 1 else {
            throw DecodingError.incorrectHrpSize
        }
        guard intPos + 7 <= str.count else {
            throw DecodingError.incorrectChecksumSize
        }
        let vSize: Int = str.count - 1 - intPos
        var values = Data(repeating: 0x00, count: vSize)
        for i in 0 ..< vSize {
            let c = strBytes[i + intPos + 1]
            let decInt = decCharset[Int(c)]
            if decInt == -1 {
                throw DecodingError.invalidCharacter
            }
            values[i] = UInt8(decInt)
        }
        let hrp = String(str[..<pos]).lowercased()
        guard verifyChecksum(hrp: hrp, checksum: values) else {
            throw DecodingError.checksumMismatch
        }
        return (hrp, Data(values[..<(vSize - 6)]))
    }

    func convertBits(data: [UInt8], fromBits: Int, toBits: Int, pad: Bool) throws -> [UInt8] {
        var acc = 0
        var bits = 0
        var out = [UInt8]()
        let maxv = (1 << toBits) - 1
        let maxAcc = Int(1 << (fromBits + toBits - 1)) - 1
        for i in 0 ..< data.count {
            let value = Int(data[Int(i)] & 0xFF)
            if (value >> fromBits) != 0 {
                assertionFailure()
            }
            acc = ((acc << fromBits) | value) & maxAcc
            bits += fromBits
            while bits >= toBits {
                bits -= toBits
                out.append(UInt8((acc >> bits) & maxv))
            }
        }

        let padding = pad && bits > 0 ? [acc << (toBits - Int(bits)) & maxv] : []

        if !pad, bits >= fromBits || ((acc << (toBits - bits)) & maxv) > 0 {
            assertionFailure()
        }

        return out + padding.map { return UInt8($0) }
    }
}

extension Bech32 {
    enum DecodingError: LocalizedError {
        case nonUTF8String
        case nonPrintableCharacter
        case invalidCase
        case noChecksumMarker
        case incorrectHrpSize
        case incorrectChecksumSize
        case stringLengthExceeded

        case invalidCharacter
        case checksumMismatch

        var errorDescription: String? {
            switch self {
            case .checksumMismatch:
                return "Checksum doesn't match"
            case .incorrectChecksumSize:
                return "Checksum size too low"
            case .incorrectHrpSize:
                return "Human-readable-part is too small or empty"
            case .invalidCase:
                return "String contains mixed case characters"
            case .invalidCharacter:
                return "Invalid character met on decoding"
            case .noChecksumMarker:
                return "Checksum delimiter not found"
            case .nonPrintableCharacter:
                return "Non printable character in input string"
            case .nonUTF8String:
                return "String cannot be decoded by utf8 decoder"
            case .stringLengthExceeded:
                return "Input string is too long"
            }
        }
    }
}

extension Bech32 {
    enum Variant: UInt32 {
        case bech32
        case bech32m

        var rawValue: UInt32 {
            switch self {
            case .bech32:
                return UInt32(1)
            case .bech32m:
                return UInt32(0x2bc830a3)
            }
        }
    }
}
