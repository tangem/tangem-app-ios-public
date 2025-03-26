//
//  ActionButtonModel.swift
//  Tangem
//
//

import Foundation

enum ActionButtonModel: Hashable {
    case buy
    case swap
    case sell

    var title: String {
        switch self {
        case .buy:
            Localization.commonBuy
        case .swap:
            Localization.commonSwap
        case .sell:
            Localization.commonSell
        }
    }

    var icon: ImageType {
        switch self {
        case .buy:
            Assets.plusMini
        case .swap:
            Assets.exchangeMini
        case .sell:
            Assets.dollarMini
        }
    }
}

enum ActionButtonPresentationState: Equatable {
    case unexplicitLoading
    case loading
    case idle
}
