//
//  WebSocketError.swift
//  Tangem
//
//  Created by Andrew Son on 24/01/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum WebSocketError: Error {
    case closedUnexpectedly
    case peerDisconnected
}
