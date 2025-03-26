//
//  GenerateAddressesViewModel.swift
//  Tangem
//
//

import Foundation

struct GenerateAddressesViewModel {
    let numberOfNetworks: Int
    let currentWalletNumber: Int
    let totalWalletNumber: Int
    let didTapGenerate: () -> Void
}
