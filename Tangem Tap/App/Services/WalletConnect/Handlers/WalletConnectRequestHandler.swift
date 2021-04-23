//
//  WalletConnectRequestHandler.swift
//  Tangem Tap
//
//  Created by Andrew Son on 14/04/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import WalletConnectSwift

protocol TangemWalletConnectRequestHandler: RequestHandler {
    var delegate: WalletConnectHandlerDelegate? { get }
    var dataSource: WalletConnectHandlerDataSource? { get }
}
