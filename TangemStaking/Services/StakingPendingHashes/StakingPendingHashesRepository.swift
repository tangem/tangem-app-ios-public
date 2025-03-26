//
//  StakingPendingHashesRepository.swift
//  TangemStaking
//
//

import Foundation

public protocol StakingPendingHashesRepository {
    func storeHash(_ hash: StakingPendingHash)
    func fetchHashes() -> [StakingPendingHash]
    func removeHash(_ hash: StakingPendingHash)
}
