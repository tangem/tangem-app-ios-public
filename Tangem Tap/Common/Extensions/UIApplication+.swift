//
//  UIApplication+.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 02.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        windows.first { $0.isKeyWindow }?.endEditing(true)
    }
}
