//
//  RateAppInteractionController.swift
//  Tangem
//
//

import Foundation
import Combine

protocol RateAppInteractionController {
    func bind(
        isPageSelectedPublisher: some Publisher<Bool, Never>,
        notificationsPublisher1: some Publisher<[NotificationViewInput], Never>,
        notificationsPublisher2: some Publisher<[NotificationViewInput], Never>
    )

    func bind(
        isPageSelectedPublisher: some Publisher<Bool, Never>,
        notificationsPublisher: some Publisher<[NotificationViewInput], Never>
    )

    func openFeedbackMail()

    func openAppStoreReview()
}
