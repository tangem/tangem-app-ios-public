//
//  CardScannerParameters.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct CardScannerParameters {
    let shouldAskForAccessCodes: Bool
    let performDerivations: Bool
    let sessionFilter: SessionFilter?
}
