//
//  PromotionNetworkModels.swift
//  Tangem
//
//  Created by Andrey Chukavin on 02.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct PromotionParameters: Decodable {
    let status: Status
    let awardForNewCard: Int
    let awardForOldCard: Int
    let awardPaymentToken: AwardToken
}

extension PromotionParameters {
    enum Status: String, Decodable {
        case active
        case pending
        case finished
    }
}

struct PromotionValidationResult: Decodable {
    let valid: Bool
}

struct PromotionAwardResult: Decodable {
    let status: Bool
}
