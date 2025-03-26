//
//  DefaultWCSocketFactory.swift
//  Tangem
//
//

import Foundation
import ReownWalletKit

class WalletConnectV2DefaultSocketFactory: WebSocketFactory {
    /// `create(with url: URL)` is called from internal entities of WalletConnectSwiftV2 lib
    /// but we also need to have access to `WebSocket` to be able to get current connection status
    /// otherwise continuation issues may occur during new session connection
    private(set) var lastCreatedSocket: WebSocket?

    func create(with url: URL) -> WebSocketConnecting {
        let socket = WebSocket(url: url)
        lastCreatedSocket = socket
        return socket
    }
}

extension WebSocket: WebSocketConnecting {}
