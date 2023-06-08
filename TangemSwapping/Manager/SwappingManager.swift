//
//  SwappingManager.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 07.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol SwappingManager {
    func getAmount() -> Decimal?
    func getSwappingItems() -> SwappingItems
    func getReferrerAccount() -> SwappingReferrerAccount?
    func getSwappingApprovePolicy() -> SwappingApprovePolicy
    func getSwappingGasPricePolicy() -> SwappingGasPricePolicy
    func isEnoughAllowance() -> Bool

    func update(swappingItems: SwappingItems)
    func update(amount: Decimal?)
    func update(approvePolicy: SwappingApprovePolicy)
    func update(gasPricePolicy: SwappingGasPricePolicy)

    @discardableResult
    func refreshBalances() async -> SwappingItems
    func refresh(type: SwappingManagerRefreshType) async -> SwappingAvailabilityState

    /// Call it to save transaction in pending list
    func didSendApproveTransaction(swappingTxData: SwappingTransactionData)
}
