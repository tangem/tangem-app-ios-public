//
//  PendingBackupData.swift
//  Tangem
//
//

import Foundation

struct PendingBackup: Codable {
    var cards: [String: PendingBackupCard]
}

struct PendingBackupCard: Codable {
    let hasWalletsError: Bool
    let hasBackupError: Bool
}
