//
//  ReadCommand.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

typealias Card = ReadResponse

struct ReadResponse: TlvMapable {
    init?(from tlv: [Tlv]) {
        return nil
    }
}

@available(iOS 13.0, *)
class ReadCommand: Command {
    typealias CommandResponse = ReadResponse
    
    init() {
        //TODO: all params
    }
    
    func serialize(with environment: CardEnvironment) -> CommandApdu {
        let tlv = [Tlv]()
        let cApdu = CommandApdu(.read, tlv: tlv)
        return cApdu
    }
}
