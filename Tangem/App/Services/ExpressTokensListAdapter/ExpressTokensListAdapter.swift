//
//  ExpressTokensListAdapter.swift
//  Tangem
//
//  Created by Sergey Balashov on 24.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol ExpressTokensListAdapter {
    func walletModels() -> AnyPublisher<[WalletModel], Never>
}
