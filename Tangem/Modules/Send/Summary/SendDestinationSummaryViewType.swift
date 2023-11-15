//
//  SendDestinationSummaryViewType.swift
//  Tangem
//
//  Created by Andrey Chukavin on 07.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum SendDestinationSummaryViewType {
    case address(address: String)
    case additionalField(type: SendAdditionalFields, value: String)
}

extension SendDestinationSummaryViewType: Identifiable {
    var id: String {
        switch self {
        case .address(let address):
            return address
        case .additionalField(_, let value):
            return value
        }
    }
}
