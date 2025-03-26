//
//  BlockchainCodingKeyTests.swift
//  BlockchainSdkTests
//
//

import XCTest
import CryptoKit
import TangemSdk
import WalletCore
@testable import BlockchainSdk

class BlockchainCodingKeyTests: XCTestCase {
    let testVectorsUtility = TestVectorsUtility()
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()

    func testCodingKeys() throws {
        guard let blockchains: [BlockchainSdk.Blockchain] = try testVectorsUtility.getTestVectors(from: "blockchain_vectors") else {
            XCTFail("__INVALID_VECTOR__ BLOCKCHAIN DATA IS NIL")
            return
        }

        for blockchain in blockchains {
            let recoveredFromCodable = try? decoder.decode(Blockchain.self, from: try encoder.encode(blockchain))
            XCTAssertTrue(recoveredFromCodable == blockchain, "\(blockchain.displayName) codingKey test failed")
        }
    }
}
