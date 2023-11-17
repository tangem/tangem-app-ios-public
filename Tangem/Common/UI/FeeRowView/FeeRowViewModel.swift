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
    let isSelected: BindingValue<Bool>

    var subtitleText: String {
        switch subtitle {
        case .loading:
            return ""
        case .loaded(let value):
            return value
        case .failedToLoad(let error):
            return "—"
        }
    }

    var isLoading: Bool {
        subtitle.isLoading
    }

    private let subtitle: LoadingValue<String>

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
