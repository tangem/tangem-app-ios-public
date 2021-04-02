//
//  SignHandler.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 02.04.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import WalletConnectSwift

protocol SignHandler: AnyObject {
    var server: Server {get}
    func assertAddress(_ address: String) -> Bool
    func askToSign(request: Request, message: String, dataToSign: Data)
}
