//
//  CardInfoPageWarningIconAndTitleCellPreviewViewModel.swift
//  Tangem
//
//

import Foundation
import class UIKit.UIImage

final class CardInfoPageWarningIconAndTitleCellPreviewViewModel: ObservableObject, Identifiable {
    let id = UUID()
    let icon: UIImage?
    let title: String

    init(icon: UIImage?, title: String) {
        self.icon = icon
        self.title = title
    }
}
