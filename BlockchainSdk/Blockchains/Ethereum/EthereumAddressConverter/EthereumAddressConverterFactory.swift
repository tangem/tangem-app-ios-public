//
//  EthereumAddressConverterFactory.swift
//  BlockchainSdk
//
//

import Foundation

struct EthereumAddressConverterFactory {
    func makeConverter(for blockchain: Blockchain) -> EthereumAddressConverter {
        switch blockchain {
        case .xdc:
            return XDCAddressConverter()
        case .decimal:
            return DecimalAddressConverter()
        default:
            return IdentityEthereumAddressConverter()
        }
    }
}
