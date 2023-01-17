//
//  DefaultWCSocketFactory.swift
//  Tangem
//
//  Created by Andrew Son on 22/12/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import WalletConnectSwiftV2

struct WalletConnectV2DefaultSocketFactory: WebSocketFactory {
    func create(with url: URL) -> WebSocketConnecting {
        WebSocket(url: url)
    }
}

extension WebSocket: WebSocketConnecting {}
