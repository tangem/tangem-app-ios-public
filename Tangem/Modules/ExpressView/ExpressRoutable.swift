//
//  SwappingRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSwapping

protocol ExpressRoutable: AnyObject {
    func presentFeeSelectorView()
    func presentSwappingTokenList(walletType: ExpressTokensListViewModel.SwapDirection)
    func presentSuccessView(inputModel: SwappingSuccessInputModel)
    func presentApproveView()
}
