//
//  CommonUserWalletModel+Mock.swift
//  Tangem
//
//

import Foundation

extension CommonUserWalletModel {
    static let mock = CommonUserWalletModelFactory().makeModel(
        cardInfo: CardMock.wallet.cardInfo
    )
}
