//
//  FileLogger.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class FileLogger: TangemSdkLogger {
    private let loggerSerialQueue = DispatchQueue(label: "com.tangem.filelogger.queue")
    private let numberOfDaysUntilExpiration = 7
    private lazy var logFileURL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0].appendingPathComponent(fileName)

    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"
        return formatter
    }()

    init() {
        let fileManager = FileManager.default

        if !fileManager.fileExists(atPath: logFileURL.relativePath) {
            fileManager.createFile(atPath: logFileURL.relativePath, contents: nil)
        }
    }

    public func log(_ message: String, level: Log.Level) {
        guard Log.filter(level) else { return }

        loggerSerialQueue.async {
            let formattedMessage = "\n\(level.emoji) \(self.dateFormatter.string(from: Date())):\(level.prefix) \(message)"

            guard let messageData = formattedMessage.data(using: .utf8) else {
                return
            }

            do {
                let handler = try FileHandle(forWritingTo: self.logFileURL)
                try handler.seekToEnd()
                try handler.write(contentsOf: messageData)
                try handler.close()
            } catch {
                print(error)
            }
        }
    }

    func removeLogFileIfNeeded() {
        let fileManager = FileManager.default
        let calendar = Calendar.current

        guard
            let fileAttributes = try? fileManager.attributesOfItem(atPath: logFileURL.relativePath),
            let creationDate = fileAttributes[.creationDate] as? Date,
            let expirationDate = calendar.date(byAdding: .day, value: numberOfDaysUntilExpiration, to: creationDate),
            expirationDate < Date()
        else {
            return
        }

        do {
            try fileManager.removeItem(at: logFileURL)
        } catch {
            AppLog.shared.debug("Failed to delete log file. Error: \(error)")
        }
    }
}

extension FileLogger: LogFileProvider {
    var fileName: String {
        LogFilesNames.scanLogs
    }

    var logData: Data? {
        try? Data(contentsOf: logFileURL)
    }

    func prepareLogFile() -> URL {
        return logFileURL
    }
}
