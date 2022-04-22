//
//  CurrenciesResponse.swift
//  Tangem
//
//  Created by Alexander Osokin on 22.04.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct CurrenciesResponse: Codable {
    let currencies: [CurrenciesResponse.Currency]
}
