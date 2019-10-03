//
//  CheckWalletCommand.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

struct CheckWalletResponse: TlvMapable {
    init?(from tlv: [Tlv]) {
        <#code#>
    }
}

@available(iOS 13.0, *)
class CheckWalletCommand: Command {
    typealias CommandResponse = CheckWalletResponse
    
    func serialize(with environment: CardEnvironment) -> CommandApdu {
        <#code#>
    }
}
