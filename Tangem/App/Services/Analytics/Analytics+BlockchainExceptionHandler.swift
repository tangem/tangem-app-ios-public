//
//  BlockchainExceptionHandler.swift
//  Tangem
//
//  Created by skibinalexander on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import Firebase
import SwiftDate

extension Analytics {
    struct BlockchainExceptionHandler: ExceptionHandlerOutput {
        func handleAPISwitch(blockchain: Blockchain, currentHost: String, nextHost: String?, statusCode: Int, message: String) {
            Analytics.log(
                event: .blockchainSdkException,
                params: [
                    .blockchain: blockchain.currencySymbol,
                    .region: Locale.current.regionCode?.lowercased() ?? "",
                    .exceptionHost: currentHost,
                    .selectedHost: nextHost ?? "",
                    .errorCode: "\(statusCode)",
                    .errorDescription: message,
                ],
                analyticsSystems: [.crashlytics]
            )
        }
    }
}
