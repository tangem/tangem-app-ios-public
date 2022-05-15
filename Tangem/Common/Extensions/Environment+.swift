//
//  Environment+.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 16.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

private struct ScreenSizeEnvironmentKey: EnvironmentKey {
    static let defaultValue: CGRect = UIScreen.main.bounds
}

extension EnvironmentValues {
    var screenSize: CGRect {
        get { self[ScreenSizeEnvironmentKey.self] }
        set { self[ScreenSizeEnvironmentKey.self] = newValue }
    }
}
