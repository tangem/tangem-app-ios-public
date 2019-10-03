//
//  CardReader.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 26/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

@available(iOS 13.0, *)
public protocol CardReader {
    func startSession()
    func stopSession()
    func send(command: CommandApdu, completion: @escaping (CompletionResult<ResponseApdu>) -> Void)
}
