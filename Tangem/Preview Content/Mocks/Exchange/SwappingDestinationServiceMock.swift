//
//  SwappingDestinationServiceMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 07.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemExchange

struct SwappingDestinationServiceMock: SwappingDestinationServing {
    func getDestination(source: Currency) async throws -> Currency {
        .mock
    }
}
