//
//  CurvesValidator.swift
//  Tangem
//
//

import Foundation
import TangemSdk

struct CurvesValidator {
    let expectedCurves: [EllipticCurve]

    func validate(_ curves: [EllipticCurve]) -> Bool {
        for expectedCurve in expectedCurves {
            let cardCurvesCount = curves.filter { $0 == expectedCurve }.count

            // Curve is missing
            if cardCurvesCount == 0 {
                return false
            }

            // Duplicated curve
            if cardCurvesCount > 1 {
                return false
            }
        }

        return true
    }
}
