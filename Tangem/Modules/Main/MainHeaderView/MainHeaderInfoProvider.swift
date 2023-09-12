//
//  MainHeaderInfoProvider.swift
//  Tangem
//
//  Created by Andrew Son on 22/05/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine

protocol MainHeaderInfoProvider: AnyObject {
    var cardHeaderImage: ImageType? { get }
    var isUserWalletLocked: Bool { get }
    var isWalletModelListEmpty: Bool { get }
    var userWalletNamePublisher: AnyPublisher<String, Never> { get }
}
