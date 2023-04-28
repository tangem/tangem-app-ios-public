//
//  SwappingManagerDelegate.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 24.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

public protocol SwappingManagerDelegate: AnyObject {
    func swappingManager(_ manager: SwappingManager, didUpdate swappingItems: SwappingItems)
    func swappingManager(_ manager: SwappingManager, didUpdate availabilityState: SwappingAvailabilityState)
}
