//
//  UserTokenListManager.swift
//  Tangem
//
//  Created by Sergey Balashov on 17.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine

protocol UserTokenListManager {
    func loadAndSaveUserTokenList() -> AnyPublisher<UserTokenList, Error>
}
