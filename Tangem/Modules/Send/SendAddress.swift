//
//  SendAddress.swift
//  Tangem
//
//  Created by Andrey Chukavin on 06.03.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct SendAddress: Equatable {
    let value: String
    let inputSource: InputSource
}

extension SendAddress {
    enum InputSource: Equatable {
        case otherWallet
        case recentAddress
        case pasteButton
        case qrCode
        case textField
    }
}
