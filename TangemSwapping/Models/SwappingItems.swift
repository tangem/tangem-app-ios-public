//
//  SwappingItems.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 15.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public struct SwappingItems {
    public var source: Currency
    public var destination: Currency?

    public var sourceBalance: Decimal = 0
    public var destinationBalance: Decimal?

    public init(source: Currency, destination: Currency?) {
        self.source = source
        self.destination = destination
    }
}
