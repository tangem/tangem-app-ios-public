//
//  UserWalletSerializable.swift
//  Tangem
//
//

import Foundation

protocol UserWalletSerializable {
    func serialize() -> StoredUserWallet
}
