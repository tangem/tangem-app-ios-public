//
//  MinimizedAppTimer.swift
//  Tangem
//
//

import Combine
import UIKit

/// Sends an event when the app has been in background for a specified period of time
class MinimizedAppTimer {
    var timer: AnyPublisher<Void, Never> {
        publisher.eraseToAnyPublisher()
    }

    private let interval: TimeInterval
    private var lastTimeEnteredBackground: Date?
    private var bag: Set<AnyCancellable> = []
    private var publisher = PassthroughSubject<Void, Never>()

    init(interval: TimeInterval) {
        self.interval = interval

        NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification)
            .sink { [weak self] _ in
                self?.lastTimeEnteredBackground = Date()
            }
            .store(in: &bag)

        NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)
            .sink { [weak self] _ in
                guard let self else { return }

                if let lastTimeEnteredBackground = lastTimeEnteredBackground,
                   Date().timeIntervalSince(lastTimeEnteredBackground) >= self.interval {
                    publisher.send(())
                }

                lastTimeEnteredBackground = nil
            }
            .store(in: &bag)
    }
}
