//
//  UserTokenListManager.swift
//  Tangem
//
//

import Combine
import BlockchainSdk

// TODO: Andrey Fedorov - The interface and responsibilities of this entity are one big mess, refactoring needed (IOS-4403)
protocol UserTokenListManager: UserTokensSyncService {
    var userTokens: [StorageEntry] { get }
    var userTokensPublisher: AnyPublisher<[StorageEntry], Never> { get }

    var userTokensList: StoredUserTokenList { get }
    var userTokensListPublisher: AnyPublisher<StoredUserTokenList, Never> { get }

    func update(with userTokenList: StoredUserTokenList)
    func update(_ type: UserTokenListUpdateType, shouldUpload: Bool)
    func updateLocalRepositoryFromServer(_ completion: @escaping (Result<Void, Error>) -> Void)
    func upload()
}
