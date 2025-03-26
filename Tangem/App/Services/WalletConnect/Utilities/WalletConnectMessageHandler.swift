//
//  WalletConnectMessagaHandler.swift
//  Tangem
//
//

import WalletConnectUtils

protocol WalletConnectMessageHandler {
    var event: WalletConnectEvent { get }
    func messageForUser(from dApp: WalletConnectSavedSession.DAppInfo) async throws -> String
    func handle() async throws -> RPCResult
}
