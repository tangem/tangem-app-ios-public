//
//  ExpressAPIService.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 31.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Moya

// TODO: Will be added return values during developing

protocol ExpressAPIService {
    func assets(request: ExpressDTO.Assets.Request) async throws
    func pairs(request: ExpressDTO.Pairs.Request) async throws
    func providers() async throws
    func exchangeQuote(request: ExpressDTO.ExchangeQuote.Request) async throws
    func exchangeData(request: ExpressDTO.ExchangeData.Request) async throws
    func exchangeResults(request: ExpressDTO.ExchangeResult.Request) async throws
}
