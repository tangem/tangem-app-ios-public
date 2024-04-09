//
//  CustomFeeService.swift
//  Tangem
//
//  Created by Andrey Chukavin on 01.04.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol CustomFeeService: AnyObject {
    var customFeeDescription: String? { get }
    var readOnlyCustomFee: Bool { get }

    func inputFieldModels() -> [SendCustomFeeInputFieldModel]
    func setCustomFee(value: Decimal?)
}
