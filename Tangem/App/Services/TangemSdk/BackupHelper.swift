//
//  BackupHelper.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class BackupHelper {
    private let backupService: BackupService = .init(sdk: .init())

    var cardId: String? {
        backupService.primaryCard?.cardId
    }

    var hasIncompletedBackup: Bool {
        backupService.hasIncompletedBackup
    }

    func discardIncompletedBackup() {
        backupService.discardIncompletedBackup()
    }
}
