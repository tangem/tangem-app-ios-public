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
        //TODO: init
    }
}

@available(iOS 13.0, *)
class CheckWalletCommand: CommandSerializer {
    typealias CommandResponse = CheckWalletResponse
    
    init() {
             //TODO: all params
    }
    
    func serialize(with environment: CardEnvironment) -> CommandApdu {
       let tlv = [Tlv]()
        //TODO: handle tlv
        let cApdu = CommandApdu(.checkWallet, tlv: tlv)
        return cApdu
    }
}
