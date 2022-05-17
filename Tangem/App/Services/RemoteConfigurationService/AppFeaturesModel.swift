//
//  AppFeatures.swift
//  Tangem
//
//  Created by Alexander Osokin on 06.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct AppFeatures: Decodable {
    let isWalletPayIdEnabled: Bool
    let isSendingToPayIdEnabled: Bool
    let isTopUpEnabled: Bool
    let isCreatingTwinCardsAllowed: Bool
}
