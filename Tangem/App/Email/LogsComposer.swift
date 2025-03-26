//
//  LogsComposer.swift
//  Tangem
//
//

import Foundation

class LogsComposer {
    private let providers: [LogFileProvider]

    init(providers: [LogFileProvider]) {
        self.providers = providers
    }

    convenience init(infoProvider: LogFileProvider) {
        let providers = [infoProvider, AppLog.shared.fileLogger]
        self.init(providers: providers)
    }

    convenience init() {
        self.init(providers: [AppLog.shared.fileLogger])
    }

    func getLogFiles() -> [URL] {
        return providers.map { $0.prepareLogFile() }
    }

    func getLogsData() -> [String: Data] {
        return providers.reduce(into: [:]) { result, provider in
            if let logData = provider.logData {
                result[provider.fileName] = logData
            }
        }
    }
}
