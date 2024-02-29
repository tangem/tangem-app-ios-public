//
//  ExpressApproveData.swift
//  TangemExpress
//
//  Created by Sergey Balashov on 11.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct ExpressApproveData {
    public let spender: String
    public let toContractAddress: String
    public let data: Data
}
