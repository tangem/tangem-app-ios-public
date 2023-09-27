//
//  AddCustomTokenRoutable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 22.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

protocol AddCustomTokenRoutable: AnyObject {
    func dismiss()
    func openNetworkSelector(selectedBlockchainNetworkId: String?, blockchains: [Blockchain])
}
