//
//  TransactionSenderMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 12.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemSwapping
import BlockchainSdk

struct SwappingFeeFormatterMock: SwappingFeeFormatter {
    func format(fee: Decimal, tokenItem: TokenItem) -> String { "" }
}
