//
//  BackupServiceFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

protocol BackupServiceFactory {
    func makeBackupService() -> BackupService
}
