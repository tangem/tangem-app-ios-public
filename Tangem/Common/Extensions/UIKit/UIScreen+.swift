//
//  UISCreen.swift
//  Tangem
//
//  Created by Alexander Osokin on 28.08.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import UIKit


extension UIScreen {
    func animateBrightness(from: CGFloat, to value: CGFloat) {
        let dist = abs(from - value)
        let step: CGFloat = dist / 30.0

        guard  abs(UIScreen.main.brightness - value) > step else { return }

        let delta = UIScreen.main.brightness > value ? -step : step

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            UIScreen.main.brightness += delta
            self.animateBrightness(from: from, to: value)
        }
    }
}
