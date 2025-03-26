//
//  SolanaApiLoggerUtil.swift
//  BlockchainSdk
//
//

import Foundation
import TangemSdk
import SolanaSwift

struct SolanaApiLoggerUtil: NetworkingRouterSwitchApiLogger {
    func handle(error: any Error, currentHost: String, nextHost: String) {
        ExceptionHandler.shared.handleAPISwitch(currentHost: currentHost, nextHost: nextHost, message: error.localizedDescription)
    }

    func handle(error message: String) {
        Log.error(message)
    }
}
