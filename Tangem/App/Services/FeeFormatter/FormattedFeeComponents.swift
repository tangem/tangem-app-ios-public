//
//  FormattedFeeComponents.swift
//  Tangem
//
//

import Foundation

struct FormattedFeeComponents {
    let cryptoFee: String
    let fiatFee: String?
}

extension FormattedFeeComponents: Hashable {}
