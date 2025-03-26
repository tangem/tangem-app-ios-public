//
//  FakeUserWalletNotificationManager.swift
//  Tangem
//
//

import Foundation
import Combine

class FakeUserWalletNotificationManager: NotificationManager {
    var notificationInputs: [NotificationViewInput] {
        notificationSubject.value
    }

    var notificationPublisher: AnyPublisher<[NotificationViewInput], Never> {
        notificationSubject.eraseToAnyPublisher()
    }

    private let notificationSubject: CurrentValueSubject<[NotificationViewInput], Never> = .init([])

    func setupManager(with delegate: NotificationTapDelegate?) {}

    func dismissNotification(with id: NotificationViewId) {
        notificationSubject.value.removeAll(where: { $0.id == id })
    }
}
