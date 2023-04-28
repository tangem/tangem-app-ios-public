//
//  ApproveAllowanceParameters.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 31.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct ApproveAllowanceParameters: Encodable {
    public let tokenAddress: String
    public let walletAddress: String

    public init(tokenAddress: String, walletAddress: String) {
        self.tokenAddress = tokenAddress
        self.walletAddress = walletAddress
    }
}
