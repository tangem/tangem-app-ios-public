//
//  SwappingFeeRowViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 30.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct SwappingFeeRowViewModel: Identifiable, Hashable {
    var id: Int { hashValue }
    
    let isLoading: Bool
    var formattedFee: String {
        "\(fee) \(tokenSymbol) (\(fiatValue))"
    }

    private let fee: String
    private let tokenSymbol: String
    private let fiatValue: String

    init(
        fee: String,
        tokenSymbol: String,
        fiatValue: String,
        isLoading: Bool
    ) {
        self.fee = fee
        self.fiatValue = fiatValue
        self.tokenSymbol = tokenSymbol
        self.isLoading = isLoading
    }
}
