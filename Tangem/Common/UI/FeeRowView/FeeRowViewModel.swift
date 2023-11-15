//
//  FeeRowViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 31.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct FeeRowViewModel: Identifiable {
    let id = UUID()

    let option: FeeOption
    let subtitle: LoadingValue<String>
    let isSelected: BindingValue<Bool>

    init(
        option: FeeOption,
        subtitle: LoadingValue<String>,
        isSelected: BindingValue<Bool>
    ) {
        self.option = option
        self.subtitle = subtitle
        self.isSelected = isSelected
    }
}
