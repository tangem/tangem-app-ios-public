//
//  Lock.swift
//  BlockchainSdk
//
//

import Foundation

final class Lock {
    private let lock: NSLocking

    init(isRecursive: Bool) {
        lock = isRecursive ? NSRecursiveLock() : NSLock()
    }

    func withLock<R>(_ body: () throws -> R) rethrows -> R {
        lock.lock()
        defer { lock.unlock() }
        return try body()
    }

    func callAsFunction<R>(_ body: () throws -> R) rethrows -> R {
        try withLock(body)
    }
}
