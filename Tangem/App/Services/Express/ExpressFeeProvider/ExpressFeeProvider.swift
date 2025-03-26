//
//  ExpressFeeProvider.swift
//  Tangem
//
//

import Foundation
import TangemExpress

protocol ExpressFeeProvider: FeeProvider {
    func setup(wallet: WalletModel)
}
