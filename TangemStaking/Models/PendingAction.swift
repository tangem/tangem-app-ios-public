//
//  PendingAction.swift
//  TangemStaking
//
//

import Foundation

public struct PendingAction: Hashable {
    public let id: String
    public let status: ActionStatus
    public let amount: Decimal
    public let currentStepIndex: Int
    public let transactions: [ActionTransaction]
}
