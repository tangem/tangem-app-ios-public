//
//  WalletConnectSigner.swift
//  Tangem
//
//

import Foundation
import TangemSdk

protocol WalletConnectSigner {
    func sign(data: Data, using walletModel: WalletModel) async throws -> String
}
