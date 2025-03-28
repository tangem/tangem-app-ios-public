//
//  ContractAddressValidatorFactory.swift
//  BlockchainSdk
//
//

import Foundation

public struct ContractAddressValidatorFactory {
    private let blockchain: Blockchain

    public init(blockchain: Blockchain) {
        self.blockchain = blockchain
    }

    public func makeValidator() -> AddressValidator {
        switch blockchain {
        case .binance:
            return DummyContractAddressValidator()
        case .cardano:
            return CardanoTokenContractAddressService()
        default:
            let addressServiceFactory = AddressServiceFactory(blockchain: blockchain)
            return addressServiceFactory.makeAddressService()
        }
    }
}

// MARK: - DummyContractAddressValidator

private struct DummyContractAddressValidator: AddressValidator {
    func validate(_ address: String) -> Bool {
        if address.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return false
        }

        return true
    }
}
