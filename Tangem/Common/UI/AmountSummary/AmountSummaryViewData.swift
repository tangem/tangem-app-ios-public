//
//  AmountSummaryViewData.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct AmountSummaryViewData: Identifiable {
    let id = UUID()

    let title: String
    let amount: String
    let amountFiat: String
    let tokenIconInfo: TokenIconInfo
}
