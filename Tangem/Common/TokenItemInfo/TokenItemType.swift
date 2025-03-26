//
//  TokenItemType.swift
//  Tangem
//
//

import Foundation

enum TokenItemType: Equatable {
    /// `Default` means `coin/token with derivation`,  unlike `withoutDerivation` case.
    case `default`(WalletModel)
    case withoutDerivation(StoredUserTokenList.Entry)
}
