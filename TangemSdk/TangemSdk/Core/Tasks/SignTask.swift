//
//  SignTask.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 04/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public enum SignResult {
    case success(Data)
    case failure(TaskError)
}
