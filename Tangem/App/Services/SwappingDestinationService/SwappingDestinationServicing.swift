//
//  SwappingDestinationServicing.swift
//  Tangem
//
//  Created by Sergey Balashov on 31.03.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import TangemSwapping

protocol SwappingDestinationServicing {
    func getDestination(source: Currency) async throws -> Currency
}
