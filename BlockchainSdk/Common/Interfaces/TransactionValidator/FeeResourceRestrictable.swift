//
//  FeeResourceRestrictable.swift
//  BlockchainSdk
//
//

import Foundation

protocol FeeResourceRestrictable {
    /// This currently works only for networks where the maxFeeResource is equal to the coin balance.
    /// Koinos is one such network.
    func validateFeeResource(amount: Amount, fee: Amount) throws
}

extension FeeResourceRestrictable where Self: WalletProvider {
    func validateFeeResource(amount: Amount, fee: Amount) throws {
        guard case .feeResource(let type) = fee.type, fee.value >= 0 else {
            throw ValidationError.invalidFee
        }

        guard let currentFeeResource = wallet.amounts[fee.type]?.value,
              let maxFeeResource = wallet.amounts[amount.type]?.value
        else {
            throw ValidationError.balanceNotFound
        }

        if fee.value > maxFeeResource {
            throw ValidationError.feeExceedsMaxFeeResource
        }

        let availableBalanceForTransfer = currentFeeResource - fee.value

        if amount.value == maxFeeResource, availableBalanceForTransfer > 0 {
            throw ValidationError.amountExceedsFeeResourceCapacity(
                type: type,
                availableAmount: availableBalanceForTransfer
            )
        }

        if amount.value > availableBalanceForTransfer {
            throw ValidationError.insufficientFeeResource(
                type: type,
                current: currentFeeResource,
                max: maxFeeResource
            )
        }
    }
}
