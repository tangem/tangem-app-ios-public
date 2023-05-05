//
//  BottomSheetInfoViewModel.swift
//  Tangem
//
//  Created by skibinalexander on 05.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public struct BottomSheetInfoViewModel: Identifiable {
    public struct Input {
        let icon: ImageType
        let title: String
        let description: String?
        let buttonTitle: String?
    }

    public let id: UUID = .init()

    let input: Input
    let buttonTapAction: (() -> Void)?
}
