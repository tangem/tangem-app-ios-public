//
//  ReferralInputModel.swift
//  Tangem
//
//

import Foundation

// TODO: Refactor userTokensManager interface to get rid of supportedBlockchains
struct ReferralInputModel {
    let userWalletId: Data
    let supportedBlockchains: SupportedBlockchainsSet
    let userTokensManager: UserTokensManager
}
