//
//  OneInchSwappingProviderErrors.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 23.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

extension OneInchSwappingProvider {
    enum Errors: Error {
        case noData
        case incorrectDataFormat
    }
}
