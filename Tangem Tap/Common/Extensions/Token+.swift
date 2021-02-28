//
//  Token+.swift
//  Tangem Tap
//
//  Created by Andrew Son on 05/02/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

extension Token: Identifiable {
    public var id: Int { return hashValue }
}
