//
//  BottomSheetInfoViewModel.swift
//  Tangem
//
//

import Foundation

struct BottomSheetInfoViewModel: Identifiable {
    // MARK: - Access

    var icon: ImageType {
        input.icon
    }

    var title: String {
        input.title
    }

    var description: String? {
        input.description
    }

    var buttonTitle: String? {
        input.buttonTitle
    }

    // MARK: - Properties

    let id: UUID = .init()
    let buttonTapAction: (() -> Void)?

    private let input: Input

    // MARK: - Init

    init(input: Input, buttonTapAction: (() -> Void)?) {
        self.input = input
        self.buttonTapAction = buttonTapAction
    }
}

extension BottomSheetInfoViewModel {
    struct Input {
        let icon: ImageType
        let title: String
        let description: String?
        let buttonTitle: String?
    }
}
