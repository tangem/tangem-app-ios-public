//
//  SwapAvailabilityService.swift
//  Tangem
//
//  Created by Andrew Son on 13/06/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import BlockchainSdk

//
// protocol SwapAvailabilityService {
//    func isSwapAvailble(in blockchain: Blockchain) -> Bool
//    func canSwap(amount: Amount.AmountType, in blockchain: Blockchain) -> AnyPublisher<Bool, Error>
// }
//
// class CommonSwapAvailabilityService {
//    @Injected(\.tangemApiService) private var tangemApiService: TangemApiService
// }
//
// extension CommonSwapAvailabilityService: SwapAvailabilityService {
//    func isSwapAvailble(in blockchain: BlockchainSdk.Blockchain) -> Bool {
//        guard FeatureProvider.isAvailable(.exchange) else {
//            return false
//        }
//
//
//    }
//
//    func canSwap(amount: BlockchainSdk.Amount.AmountType, in blockchain: BlockchainSdk.Blockchain) -> AnyPublisher<Bool, Error> {
//        <#code#>
//    }
// }
