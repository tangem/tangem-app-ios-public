//
//  PriceChangeProvider.swift
//  Tangem
//
//  Created by Andrew Son on 03/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import BlockchainSdk

protocol PriceChangeProvider: AnyObject {
    var priceChangePublisher: AnyPublisher<Void, Never> { get }

    func change(for currencyCode: String, in blockchain: Blockchain) -> Double
}
