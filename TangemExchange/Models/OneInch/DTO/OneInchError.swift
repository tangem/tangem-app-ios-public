//
//  OneInchError.swift
//  TangemExchange
//
//  Created by Sergey Balashov on 21.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct OneInchError: Decodable {
    public let statusCode: Int
    public let description: String
    public let requestId: String
}
