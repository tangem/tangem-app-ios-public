//
//  ExchangeViewItem.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import Combine

struct ExchangeViewItem: Identifiable {
    var id: UUID = UUID()
    
    let fromItem: ExchangeItem
    let toItem: ExchangeItem
}
