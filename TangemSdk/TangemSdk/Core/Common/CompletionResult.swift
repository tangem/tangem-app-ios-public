//
//  CompletionResult.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 26/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation
import CoreNFC

public enum CompletionResult<T> {
    case success(T)
    case failure(Error)
}

public enum TaskCompletionResult<T> {
    case success(T)
    case failure(TaskError)
}

public enum CardReaderCompletionResult<T> {
    case success(T)
    case failure(NFCReaderError)
}
