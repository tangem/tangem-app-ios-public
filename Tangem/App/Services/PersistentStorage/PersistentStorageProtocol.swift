//
//  PersistentStorageProtocol.swift
//  Tangem
//
//

import Foundation

protocol PersistentStorageProtocol {
    func value<T: Decodable>(for key: PersistentStorageKey) throws -> T?
    func store<T: Encodable>(value: T, for key: PersistentStorageKey) throws
    func readAllWallets<T: Decodable>() -> [String: T]
}

private struct PersistentStorageProtocolKey: InjectionKey {
    static var currentValue: PersistentStorageProtocol = PersistentStorage()
}

extension InjectedValues {
    var persistentStorage: PersistentStorageProtocol {
        get { Self[PersistentStorageProtocolKey.self] }
        set { Self[PersistentStorageProtocolKey.self] = newValue }
    }
}
