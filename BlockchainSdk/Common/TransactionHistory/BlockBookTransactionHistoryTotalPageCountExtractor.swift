//
//  BlockBookTransactionHistoryTotalPageCountExtractor.swift
//  BlockchainSdk
//
//

import Foundation

protocol BlockBookTransactionHistoryTotalPageCountExtractor {
    func extractTotalPageCount(from response: BlockBookAddressResponse, contractAddress: String?) throws -> Int
}
