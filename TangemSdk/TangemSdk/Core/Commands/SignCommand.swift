//
//  SignCommand.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

struct SignResponse: TlvMappable {
    
    
    init?(from tlv: [Tlv]) {
        //TODO: SignResponse
    }
}

@available(iOS 13.0, *)
final class SignCommand: CommandSerializer {
    typealias CommandResponse = SignResponse
    
    init() {
          //TODO: all params
      }
    
    func serialize(with environment: CardEnvironment) -> CommandApdu {
        let tlv = [Tlv]()
        //TODO: handle tlv
        let cApdu = CommandApdu(.sign, tlv: tlv)
        return cApdu
    }
}
