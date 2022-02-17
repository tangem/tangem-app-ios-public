//
//  Constants.swift
//  Tangem
//
//  Created by Andrew Son on 13/05/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import UIKit

enum Constants {
    static var tangemDomain: String { tangemDomainUrl.absoluteString }
    static var tangemDomainUrl: URL { URL(string: "https://tangem.com")! }
    static var bitcoinTxStuckTimeSec: TimeInterval {
        3600 * 24 * 1
//        0 // for testing RBF
    }
    static var isSmallScreen: Bool {
        UIScreen.main.bounds.width < 375 || UIScreen.main.bounds.height < 650
    }
}
