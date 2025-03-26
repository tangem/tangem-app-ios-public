//
//  BackupValidator.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct BackupValidator {
    func validate(backupStatus: Card.BackupStatus?, wallets: [CardDTO.Wallet]) -> Bool {
        guard let backupStatus else {
            return true
        }

        if case .cardLinked = backupStatus {
            return false
        }

        return true
    }
}
