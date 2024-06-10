//
//  DestinationViewModelValidator.swift
//  Tangem
//
//  Created by Sergey Balashov on 10.06.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol DestinationViewModelValidator {
    func validate(destination: String) throws
    func canEmbedAdditionalField(into address: String) -> Bool
}
