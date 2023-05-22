//
//  MultiWalletCardHeaderInfoProvider.swift
//  Tangem
//
//  Created by Andrew Son on 22/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol MultiWalletCardHeaderInfoProvider: AnyObject {
    var cardNamePublisher: AnyPublisher<String, Never> { get }
    var numberOfCardsPublisher: AnyPublisher<Int, Never> { get }
    var isWalletImported: Bool { get }
    var cardImage: ImageType? { get }
}
