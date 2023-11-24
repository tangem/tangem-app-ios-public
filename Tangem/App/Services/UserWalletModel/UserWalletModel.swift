//
//  UserWalletModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import BlockchainSdk
import Combine

protocol UserWalletModel: MainHeaderInfoProvider, TotalBalanceProviding, MultiWalletMainHeaderSubtitleDataSource, AnalyticsContextDataProvider, AnyObject {
    var isMultiWallet: Bool { get }
    var tokensCount: Int? { get }
    var config: UserWalletConfig { get }
    var userWalletId: UserWalletId { get }
    var userWallet: UserWallet { get }
    var walletModelsManager: WalletModelsManager { get }
    var userTokensManager: UserTokensManager { get }
    var userTokenListManager: UserTokenListManager { get }
    var signer: TangemSigner { get }
    var updatePublisher: AnyPublisher<Void, Never> { get }
    var emailData: [EmailCollectedData] { get }
    var backupInput: OnboardingInput? { get } // TODO: refactor
    var twinInput: OnboardingInput? { get }
    func updateWalletName(_ name: String)
}
