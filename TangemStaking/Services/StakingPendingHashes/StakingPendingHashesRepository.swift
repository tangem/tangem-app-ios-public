//
//  StakingPendingHashesRepository.swift
//  TangemStaking
//
//  Created by Alexander Osokin on 12.07.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

public protocol StakingPendingHashesRepository {
    func storeHash(_ hash: StakingPendingHash)
    func fetchHashes() -> [StakingPendingHash]
    func removeHash(_ hash: StakingPendingHash)
}
