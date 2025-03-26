//
//  GenericBackupServiceFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class GenericBackupServiceFactory: BackupServiceFactory {
    private let isAccessCodeSet: Bool

    init(isAccessCodeSet: Bool) {
        self.isAccessCodeSet = isAccessCodeSet
    }

    func makeBackupService() -> BackupService {
        let factory = GenericTangemSdkFactory(isAccessCodeSet: isAccessCodeSet)
        let sdk = factory.makeTangemSdk()
        return BackupService(sdk: sdk)
    }
}
