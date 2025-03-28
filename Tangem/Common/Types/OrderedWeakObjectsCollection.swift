//
//  OrderedWeakObjectsCollection.swift
//  Tangem
//
//

import Foundation

/// Use this class for saving a strong objects as weak
public class OrderedWeakObjectsCollection<T> {
    public var allDelegates: [T] {
        allKeys
            .map { key -> (Int, T?) in
                (key.intValue, mapTable.object(forKey: key) as? T)
            }
            .sorted { first, second -> Bool in
                let (firstKey, _) = first
                let (secondKey, _) = second

                return firstKey < secondKey
            }
            .compactMap { _, value -> T? in
                value
            }
    }

    private typealias KeyType = NSNumber
    private let mapTable: NSMapTable<KeyType, AnyObject> = NSMapTable.strongToWeakObjects()

    private var allKeys: [KeyType] {
        mapTable.keyEnumerator().compactMap { $0 as? KeyType }
    }

    public init() {}

    public func add(_ delegate: T) {
        let freeKey = NSNumber(value: allKeys.map { $0.intValue }.max().map { $0 + 1 } ?? 0)
        mapTable.setObject(delegate as AnyObject, forKey: freeKey)
    }

    public func remove(_ delegateToRemove: T) {
        if let key = firstKey(delegateToRemove) {
            mapTable.removeObject(forKey: key)
        }
    }

    public func contains(_ delegate: T) -> Bool {
        return firstKey(delegate) != nil
    }

    private func firstKey(_ delegate: T) -> KeyType? {
        return mapTable.keyEnumerator()
            .first(where: { mapTable.object(forKey: $0 as? KeyType) === delegate as AnyObject }) as? KeyType
    }
}
