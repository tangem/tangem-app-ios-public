//
//  CardHeaderInfoProvider.swift
//  Tangem
//
//  Created by Andrew Son on 22/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine

protocol CardHeaderInfoProvider: AnyObject {
    var cardImage: ImageType? { get }
    var isCardLocked: Bool { get }
    var cardNamePublisher: AnyPublisher<String, Never> { get }
}
