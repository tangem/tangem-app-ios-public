//
//  UserTokenListManager.swift
//  Tangem
//
//  Created by Sergey Balashov on 17.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine
import BlockchainSdk

protocol UserTokenListManager {
    var didPerformInitialLoading: Bool { get }
    func update(_ type: CommonUserTokenListManager.UpdateType)

    func updateLocalRepositoryFromServer(result: @escaping (Result<UserTokenList, Error>) -> Void)
    func getEntriesFromRepository() -> [StorageEntry]
    func clearRepository(completion: @escaping () -> Void)
}
