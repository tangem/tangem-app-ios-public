//
//  AppCoordinator+WalletConnectRoutable.swift
//  Tangem
//
//  Created by Alexander Osokin on 20.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

extension AppCoordinator: WalletConnectRoutable {
    func openQRScanner(with codeBinding: Binding<String>) {
        qrScanViewModel = .init(code: codeBinding)
    }
}
