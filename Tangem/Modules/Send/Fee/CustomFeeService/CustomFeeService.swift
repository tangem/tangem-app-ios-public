//
//  CustomFeeService.swift
//  Tangem
//
//  Created by Andrey Chukavin on 01.04.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk
import Combine

protocol CustomFeeService: AnyObject {
    func models() -> [SendCustomFeeInputFieldModel]
    func didChangeCustomFee(enteredFee: Decimal?, input: SendFeeViewModelInput, walletInfo: SendWalletInfo)
}
