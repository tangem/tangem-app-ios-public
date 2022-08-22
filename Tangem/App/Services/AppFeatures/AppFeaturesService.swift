//
//  AppFeaturesService.swift
//  Tangem
//
//  Created by Alexander Osokin on 21.10.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk
import Combine

class AppFeaturesService { // TODO: Remove with card refactorin
    private var card: Card

    var features: Set<AppFeature> {
        if card.isStart2Coin {
            return .none
        }

        var features =  Set<AppFeature>.all
        features.remove(.pins)
        return features
    }

    init(with card: Card) {
        self.card = card
    }

    deinit {
        print("AppFeaturesService deinit")
    }
}

extension AppFeaturesService {
    var canSetAccessCode: Bool { features.contains(.pins) }

    var canSetPasscode: Bool { features.contains(.pins) }

    var canCreateTwin: Bool { features.contains(.twinCreation) }

    var isPayIdEnabled: Bool { canSendToPayId }

    var canSendToPayId: Bool { features.contains(.payIDSend) }

    var canExchangeCrypto: Bool { features.contains(.topup) }
}
