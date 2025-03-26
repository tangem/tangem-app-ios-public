//
//  RateAppNotificationController.swift
//  Tangem
//
//

import Foundation
import Combine

protocol RateAppNotificationController {
    var showAppRateNotificationPublisher: AnyPublisher<Bool, Never> { get }

    func dismissAppRate()
}
