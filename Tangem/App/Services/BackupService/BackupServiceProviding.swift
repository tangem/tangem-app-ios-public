//
//  BackupServiceProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 04.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

protocol BackupServiceProviding {
    var backupService: BackupService { get }
}

private struct BackupServiceProviderKey: InjectionKey {
    static var currentValue: BackupServiceProviding = BackupServiceProvider()
}

extension InjectedValues {
    var backupServiceProvider: BackupServiceProviding {
        get { Self[BackupServiceProviderKey.self] }
        set { Self[BackupServiceProviderKey.self] = newValue }
    }
}
