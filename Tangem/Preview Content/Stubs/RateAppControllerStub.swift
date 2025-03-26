//
//  RateAppControllerStub.swift
//  Tangem
//
//

import Foundation
import Combine

struct RateAppControllerStub: RateAppInteractionController, RateAppNotificationController {
    var showAppRateNotificationPublisher: AnyPublisher<Bool, Never> { .just(output: true) }

    func bind(
        isPageSelectedPublisher: some Publisher<Bool, Never>,
        notificationsPublisher1: some Publisher<[NotificationViewInput], Never>,
        notificationsPublisher2: some Publisher<[NotificationViewInput], Never>
    ) {}

    func bind(
        isPageSelectedPublisher: some Publisher<Bool, Never>,
        notificationsPublisher: some Publisher<[NotificationViewInput], Never>
    ) {}

    func dismissAppRate() {}
    func openFeedbackMail() {}
    func openAppStoreReview() {}
}
