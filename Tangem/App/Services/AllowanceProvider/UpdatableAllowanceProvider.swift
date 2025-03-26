//
//  UpdatableAllowanceProvider.swift
//  Tangem
//
//

import Foundation
import TangemExpress

protocol UpdatableAllowanceProvider: AllowanceProvider, ExpressAllowanceProvider {
    func setup(wallet: WalletModel)
}
