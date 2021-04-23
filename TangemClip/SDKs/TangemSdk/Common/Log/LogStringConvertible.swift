//
//  LogStringConvertible.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 09.02.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol LogStringConvertible: StringArrayConvertible, CustomStringConvertible {}

extension LogStringConvertible {
    public var description: String {
        return toArray().joined(separator: ", ")
    }
}
