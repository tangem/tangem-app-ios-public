//
//  LogFileProvider.swift
//  Tangem
//
//

import Foundation

protocol LogFileProvider {
    var fileName: String { get }
    var logData: Data? { get }
    func prepareLogFile() -> URL
}

enum LogFilesNames {
    static let infoLogs = "infoLogs.txt"
    static let scanLogs = "scanLogs.txt"
}
