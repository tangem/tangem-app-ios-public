//
//  SwappingTokenListRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 22.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSwapping

protocol SwappingTokenListRoutable: AnyObject {
    func userDidTap(currency: Currency)
}
