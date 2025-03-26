//
//  PendingActionRequest.swift
//  TangemStaking
//
//

import Foundation

public struct PendingActionRequest {
    public let request: ActionGenericRequest
    public let passthrough: String
    public let type: StakingAction.PendingActionType

    public init(
        request: ActionGenericRequest,
        passthrough: String,
        type: StakingAction.PendingActionType
    ) {
        self.request = request
        self.passthrough = passthrough
        self.type = type
    }
}
