//
//  ExitAction.swift
//  TangemStaking
//
//

import Foundation

public struct ExitAction: Hashable {
    public let id: String
    public let status: ActionStatus
    public let amount: Decimal
    public let currentStepIndex: Int
    public let transactions: [ActionTransaction]
}
