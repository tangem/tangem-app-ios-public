//
//  CardEnvironment.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 02/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

struct CardEnvironment {
    let pin1: String = "000000"
    let pin2: String = "000"
    let terminalPrivateKey: Data?
    let terminalPublicKey: Data?
    let encryptionKey: Data?
}
