//
//  EncryptionMode.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 01/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

//All encryption modes
public enum EncryptionMode: Byte {
    case none = 0x0
    case fast = 0x1
    case strong = 0x2
}
