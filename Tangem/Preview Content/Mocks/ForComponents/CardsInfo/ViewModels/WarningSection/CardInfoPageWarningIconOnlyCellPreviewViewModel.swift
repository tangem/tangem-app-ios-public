//
//  CardInfoPageWarningIconOnlyCellPreviewViewModel.swift
//  Tangem
//
//

import Foundation
import class UIKit.UIImage

final class CardInfoPageWarningIconOnlyCellPreviewViewModel: ObservableObject, Identifiable {
    let id = UUID()
    let icon: UIImage?

    init(icon: UIImage?) {
        self.icon = icon
    }
}
