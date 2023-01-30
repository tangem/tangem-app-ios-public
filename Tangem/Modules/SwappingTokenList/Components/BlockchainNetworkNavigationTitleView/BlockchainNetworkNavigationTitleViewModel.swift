//
//  BlockchainNetworkNavigationTitleViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 30.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct BlockchainNetworkNavigationTitleViewModel: Hashable {
    let title: String
    let iconURL: URL
    let network: String

    var networkName: String {
        Localization.walletCurrencySubtitle(network).capitalized
    }
}
