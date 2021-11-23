//
//  CardDelegate.swift
//  Tangem
//
//  Created by Alexander Osokin on 01.04.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

protocol CardDelegate {
    func didScan(_ card: Card)
}
