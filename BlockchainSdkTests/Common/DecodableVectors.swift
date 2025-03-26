//
//  DecodableVectors.swift
//  BlockchainSdkTests
//
//

import Foundation

enum DecodableVectors: String {
    case blockchain = "blockchain_vectors"
    case validAddress = "valid_address_vectors"
    case derivation = "derivation_vectors"
    case trustWalletCompare = "trust_wallet_compare_vector"
}

// MARK: - Namespace

extension DecodableVectors {
    struct ValidAddressVector: Decodable {
        let blockchain: String
        let positive: [String]
        let negative: [String]
    }

    struct CompareVector: Decodable {
        struct Mnemonic: Decodable {
            let words: String
            let passphrase: String?
        }

        struct Testable: Decodable {
            let blockchain: String
            let derivation: String
            let addressType: String?
            let walletPublicKey: String?
        }

        let mnemonic: Mnemonic
        let testable: [Testable]
    }
}
