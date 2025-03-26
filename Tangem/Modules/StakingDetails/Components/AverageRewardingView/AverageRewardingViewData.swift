//
//  AverageRewardingViewData.swift
//  Tangem
//
//

import Foundation

struct AverageRewardingViewData: Hashable, Identifiable {
    var id: Int { hashValue }

    let rewardType: String
    let rewardFormatted: String

    let periodProfitFormatted: String
    let profitFormatted: LoadableTextView.State
}
