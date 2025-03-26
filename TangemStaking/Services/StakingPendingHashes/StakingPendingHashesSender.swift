//
//  StakingPendingHashesSender.swift
//  TangemStaking
//
//

import Foundation

public protocol StakingPendingHashesSender {
    func sendHash(_ pendingHash: StakingPendingHash) async throws

    func sendHashesIfNeeded()
}
