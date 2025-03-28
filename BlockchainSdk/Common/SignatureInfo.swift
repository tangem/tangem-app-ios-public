//
//  SignatureInfo.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk

struct SignatureInfo: CustomStringConvertible {
    let signature: Data
    let publicKey: Data
    /// The data which was signed
    let hash: Data

    var description: String {
        "signature: \(signature.hexString)\npublicKey: \(publicKey.hexString)\nhash: \(hash)"
    }
}

extension SignatureInfo {
    func unmarshal() throws -> Data {
        try Secp256k1Signature(with: signature).unmarshal(with: publicKey, hash: hash).data
    }
}
