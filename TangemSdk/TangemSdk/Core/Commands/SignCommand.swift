//
//  SignCommand.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

struct SignResponse: TlvMapable {
    init?(from tlv: [Tlv]) {
        <#code#>
    }
}

@available(iOS 13.0, *)
class SignCommand: Command {
    typealias CommandResponse = SignResponse
    
    func serialize(with environment: CardEnvironment) -> CommandApdu {
        <#code#>
    }
}
