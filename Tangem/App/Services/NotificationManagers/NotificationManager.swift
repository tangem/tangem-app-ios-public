//
//  NotificationManager.swift
//  Tangem
//
//  Created by Andrew Son on 26/08/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol NotificationManager {
    var notificationPublisher: AnyPublisher<[NotificationViewInput], Never> { get }

    func dismissNotification(with id: NotificationViewId)
}
