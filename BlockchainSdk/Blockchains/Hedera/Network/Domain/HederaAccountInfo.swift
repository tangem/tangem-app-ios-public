//
//  HederaAccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

struct HederaAccountInfo {
    /// Network entity ID in the format of `shard.realm.num`.
    let accountId: String
    /// RFC4648 no-padding base32 encoded account alias.
    let alias: String?
    /// A network entity encoded as an EVM address in hex.
    let evmAddress: String?
}
