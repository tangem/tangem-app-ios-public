//
//  WebSocketError.swift
//  Tangem
//
//

import Foundation

enum WebSocketError: Error {
    case closedUnexpectedly
    case peerDisconnected
}
