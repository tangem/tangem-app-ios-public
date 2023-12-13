//
//  ExpressFeeProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 11.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import TangemSwapping

protocol ExpressFeeProvider: FeeProvider {
    func setup(wallet: WalletModel)
}
