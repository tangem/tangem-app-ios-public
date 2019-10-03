//
//  CardManagerDelegate.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 02/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public protocol CardManagerDelegate: class {
    func showSecurityDelay(remainingSeconds: Int)
    func requestPin(completion: @escaping () -> CompletionResult<String>)
}
