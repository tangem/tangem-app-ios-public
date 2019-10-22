//
//  CompletionResult.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 26/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation
import CoreNFC

public enum CompletionResult<TSuccess, TError> {
    case success(TSuccess)
    case failure(TError)
}
