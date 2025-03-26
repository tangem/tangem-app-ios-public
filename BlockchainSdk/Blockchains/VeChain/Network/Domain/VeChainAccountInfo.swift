//
//  VeChainAccountInfo.swift
//  BlockchainSdk
//
//

import Foundation

struct VeChainAccountInfo {
    let amount: Amount

    private let energyBalance: Decimal

    init(amount: Amount, energyBalance: Decimal) {
        self.amount = amount
        self.energyBalance = energyBalance
    }

    func energyAmount(with token: Token) -> Amount {
        return Amount(with: token, value: energyBalance / token.decimalValue)
    }
}
