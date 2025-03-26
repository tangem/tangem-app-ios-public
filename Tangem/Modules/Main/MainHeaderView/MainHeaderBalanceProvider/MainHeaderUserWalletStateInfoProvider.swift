//
//  MainHeaderUserWalletStateInfoProvider.swift
//  Tangem
//
//

import Foundation

protocol MainHeaderUserWalletStateInfoProvider: AnyObject {
    var isUserWalletLocked: Bool { get }
    var isTokensListEmpty: Bool { get }
}
