//
//  BackgroundTasksManager.swift.swift
//  Tangem
//
//  Created by Andrey Fedorov on 26.03.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import BackgroundTasks

final class BackgroundTasksManager {
    static let shared = BackgroundTasksManager()

    private var bundleIdentifier = ""

    func registerBackgroundTasks(
        _ backgroundTasksToRegister: Set<BackgroundTask>,
        forApplicationWithBundleIdentifier bundleIdentifier: String
    ) {
        assert(backgroundTasksToRegister.count <= 10, "iOS currently supports maximum 10 unique background processing tasks")

        self.bundleIdentifier = bundleIdentifier

        for backgroundTask in backgroundTasksToRegister {
            let identifier = makeBackgroundTaskIdentifier(for: backgroundTask)
            let result = BGTaskScheduler.shared.register(forTaskWithIdentifier: identifier, using: nil) { [weak self] task in
                if let task = task as? BGProcessingTask {
                    self?.handleBackgroundProcessingTask(task)
                } else {
                    preconditionFailure("Unsupported type of background task '\(type(of: task))' received")
                }
            }

            if !result {
                let message = "Can't register background task with identifier '\(identifier)'"
                assertionFailure(message)
                AppLog.shared.error(message)
            }
        }
    }

    func schedule() {
        // TODO: Andrey Fedorov - Add actual implementation
    }

    func cancel() {
        // TODO: Andrey Fedorov - Add actual implementation
    }

    private func handleBackgroundProcessingTask(_ task: BGProcessingTask) {
        // TODO: Andrey Fedorov - Add actual implementation
    }

    private func makeBackgroundTaskIdentifier(for backgroundTask: BackgroundTask) -> String {
        return [
            bundleIdentifier,
            backgroundTask.rawValue,
        ].joined(separator: ".")
    }
}

// MARK: - Auxiliary types

extension BackgroundTasksManager {
    /// - Warning: Raw values must match task identifiers in `Info.plist`.
    enum BackgroundTask: String, CaseIterable {
        case polkadotAccountHealthCheck = "PolkadotAccountHealthCheckTask"
    }
}
