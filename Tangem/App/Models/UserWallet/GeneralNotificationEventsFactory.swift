//
//  GeneralNotificationEventsFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct GeneralNotificationEventsFactory {
    func makeNotifications(for card: CardDTO) -> [GeneralNotificationEvent] {
        var notifications: [GeneralNotificationEvent] = []

        if card.firmwareVersion.type != .sdk,
           card.attestation.status == .failed {
            notifications.append(.failedToVerifyCard)
        }

        for wallet in card.wallets {
            if let remainingSignatures = wallet.remainingSignatures,
               remainingSignatures <= 10 {
                notifications.append(.lowSignatures(count: remainingSignatures))
                break
            }
        }

        if AppEnvironment.current.isTestnet {
            notifications.append(.testnetCard)
        } else if card.firmwareVersion.type == .sdk, !DemoUtil().isDemoCard(cardId: card.cardId) {
            notifications.append(.devCard)
        }

        return notifications
    }
}
