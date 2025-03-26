//
//  Analytics+BlockchainExceptionHandler.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import Firebase

extension Analytics {
    struct BlockchainExceptionHandler: ExceptionHandlerOutput {
        func handleAPISwitch(currentHost: String, nextHost: String, message: String) {
            Analytics.log(
                event: .blockchainSdkException,
                params: [.exceptionHost: currentHost, .selectedHost: nextHost, .errorDescription: message]
            )
        }
    }
}
