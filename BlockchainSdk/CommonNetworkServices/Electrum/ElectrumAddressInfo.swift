//
//  ElectrumAddressInfo.swift
//  BlockchainSdk
//
//

import Foundation

struct ElectrumAddressInfo {
    let balance: Decimal
    let outputs: [ElectrumUTXO]
}

struct ElectrumUTXO {
    let position: Int
    let hash: String
    let value: Decimal
    let height: Decimal
}

struct ElectrumScriptUTXO {
    let transactionHash: String
    let outputs: [Vout]

    struct Vout {
        let n: Int
        let scriptPubKey: ScriptPubKey
    }

    struct ScriptPubKey {
        let addresses: [String]
        let hex: String
    }
}
