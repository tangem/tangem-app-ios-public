//
//  UserWalletModelProtocol.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import BlockchainSdk
import Combine

protocol UserWalletModelProtocol {
    func updateUserWalletModel(with config: UserWalletConfig)

    func subscribeWalletModels() -> AnyPublisher<[WalletModel], Never>
    func getWalletModels() -> [WalletModel]

    func add(entries: [StorageEntry], completion: @escaping (Result<UserTokenList, Error>) -> Void)
    func canManage(amountType: Amount.AmountType, blockchainNetwork: BlockchainNetwork) -> Bool
    func remove(items: [(Amount.AmountType, BlockchainNetwork)])
    func clearRepository(result: @escaping (Result<UserTokenList, Error>) -> Void)

    func updateAllWalletModelsWithCallUpdateInWalletModel(showProgressLoading: Bool)
}
