//
//  AllowanceProvider.swift
//  Tangem
//
//

import Foundation
import TangemExpress

typealias AllowanceState = TangemExpress.AllowanceState
typealias ApprovePolicy = TangemExpress.ExpressApprovePolicy
typealias ApproveTransactionData = TangemExpress.ApproveTransactionData

protocol AllowanceProvider {
    var isSupportAllowance: Bool { get }

    func allowanceState(amount: Decimal, spender: String, approvePolicy: ApprovePolicy) async throws -> AllowanceState
    func didSendApproveTransaction(for spender: String)
}
