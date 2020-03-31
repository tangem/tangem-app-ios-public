//
//  Error+.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 23.03.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

extension Error {
    func toTaskError() -> SessionError {
        return SessionError.parse(self)
    }
}
