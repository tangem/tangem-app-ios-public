//
//  SendDestination.swift
//  Tangem
//
//  Created by Andrey Chukavin on 06.03.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct SendDestination: Equatable {
    let address: String
    let source: Source
}

extension SendDestination {
    enum Source: Equatable {
        case myWallet
        case recentAddress
        case pasteButton
        case qrCode
        case textField
    }
}
