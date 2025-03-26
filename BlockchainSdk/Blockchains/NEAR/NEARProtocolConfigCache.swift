//
//  NEARProtocolConfigCache.swift
//  BlockchainSdk
//
//

import Foundation

final class NEARProtocolConfigCache {
    static let shared = NEARProtocolConfigCache()

    private let lock = Lock(isRecursive: false)
    private var protocolConfig: NEARProtocolConfig?

    func get() -> NEARProtocolConfig? {
        return lock { protocolConfig }
    }

    func set(_ protocolConfig: NEARProtocolConfig) {
        lock { self.protocolConfig = protocolConfig }
    }
}
