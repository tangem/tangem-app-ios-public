//
//  TangemResult.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 26/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public enum TangemResult<T> {
    case success(T)
    case failure(Error)
}
