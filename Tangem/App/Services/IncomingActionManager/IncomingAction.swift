//
//  IncomingAction.swift
//  Tangem
//
//

import Foundation

public enum IncomingAction: Equatable {
    case walletConnect(WalletConnectRequestURI)
    case start // Run scan or request biometrics
    case dismissSafari(URL)
}
