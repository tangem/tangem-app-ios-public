//
//  NotificationManager.swift
//  Tangem
//
//

import Foundation
import Combine

protocol NotificationManager: AnyObject {
    var notificationInputs: [NotificationViewInput] { get }
    var notificationPublisher: AnyPublisher<[NotificationViewInput], Never> { get }

    func setupManager(with delegate: NotificationTapDelegate?)
    func dismissNotification(with id: NotificationViewId)
}
