//
//  SigHashType.swift
//  TangemClip
//
//  Created by Andrew Son on 19/04/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

public enum BitcoinCoreSigHashType {
    case bitcoinAll
    case bitcoinCashAll

    var value: UInt8 {
        switch self {
            case .bitcoinAll: return 0x01
            case .bitcoinCashAll: return 0x41
        }
    }

    var forked: Bool {
        switch self {
            case .bitcoinAll: return false
            case .bitcoinCashAll: return true
        }
    }
}
