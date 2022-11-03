//
//  ExchangeViewItem.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 21.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct ExchangeItems: Identifiable {
    let id: UUID = UUID()

    let sourceItem: ExchangeItem
    let destinationItem: ExchangeItem
}
