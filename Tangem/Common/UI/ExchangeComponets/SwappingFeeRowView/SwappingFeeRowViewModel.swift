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

    let fee: String

    init(fee: String) {
        self.fee = fee
    }
}
