//
//  WebSocketEvent.swift
//  Tangem
//
//

import Foundation

extension WebSocket {
    enum WebSocketEvent {
        case connected
        case disconnected(URLSessionWebSocketTask.CloseCode)
        case messageReceived(String)
        case messageSent(String)
        case pingSent
        case pongReceived
        case connnectionError(Error)
    }
}
