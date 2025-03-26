//
//  PromotionNetworkModels.swift
//  Tangem
//
//

import Foundation

struct PromotionParameters: Decodable {
    let oldCard: CardParameters
    let newCard: CardParameters
    let awardPaymentToken: AwardToken
}

extension PromotionParameters {
    struct CardParameters: Decodable {
        let status: Status
        let award: Int
    }

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

struct PromotionAwardResetResult: Decodable {
    let status: Bool
}
