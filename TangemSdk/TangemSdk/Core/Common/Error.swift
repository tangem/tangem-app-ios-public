//
//  Error.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 27/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public enum ApduError: String, Error {
    case invalidLength = "Response length must be greater then 2"
}
