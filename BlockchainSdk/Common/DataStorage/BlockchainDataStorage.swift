//
//  BlockchainDataStorage.swift
//  BlockchainSdk
//
//

import Foundation

public protocol BlockchainDataStorage {
    func get<BlockchainData>(key: String) async -> BlockchainData? where BlockchainData: Decodable
    func store<BlockchainData>(key: String, value: BlockchainData?) async where BlockchainData: Encodable
}
