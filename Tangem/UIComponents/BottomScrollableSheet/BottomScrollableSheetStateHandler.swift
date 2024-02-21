//
//  BottomScrollableSheetStateHandler.swift
//  Tangem
//
//  Created by skibinalexander on 21.02.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol BottomScrollableSheetStateHandler {
    func update(state: BottomScrollableSheetStateHandlerState)
}

enum BottomScrollableSheetStateHandlerState {
    case collapsed
    case expanded
}
