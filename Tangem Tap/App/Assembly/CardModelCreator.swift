//
//  CardModelCreator.swift
//  Tangem Tap
//
//  Created by Andrew Son on 03/08/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol CardModelCreator {
    func makeCardModel(from info: CardInfo) -> CardViewModel
}
