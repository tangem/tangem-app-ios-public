//
//  StartupProcessor.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class StartupProcessor {
    @Injected(\.userWalletRepository) private var userWalletRepository: UserWalletRepository

    func getStartupOption() -> StartupOption {
        if BackupHelper().hasIncompletedBackup {
            return .uncompletedBackup
        }

        if AppSettings.shared.saveUserWallets,
           userWalletRepository.hasSavedWallets,
           BiometricsUtil.isAvailable {
            return .auth
        }

        return .welcome
    }
}

enum StartupOption {
    case uncompletedBackup
    case auth
    case welcome
}
