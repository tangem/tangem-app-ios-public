//
// SuiAddressService.swift
// BlockchainSdk
//
//

import Foundation
import WalletCore

final class SuiAddressService: AddressService {
    func makeAddress(for publicKey: Wallet.PublicKey, with addressType: AddressType) throws -> any Address {
        try WalletCoreAddressService(coin: .sui).makeAddress(for: publicKey, with: .default)
    }

    func validate(_ address: String) -> Bool {
        WalletCoreAddressService(coin: .sui).validate(address)
    }
}
