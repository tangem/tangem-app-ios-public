//
//  CardImageResult.swift
//  Tangem
//
//

import Foundation
import class UIKit.UIImage
import struct SwiftUI.Image

enum CardImageResult {
    case cached(UIImage)
    case downloaded(UIImage)
    case embedded(UIImage)

    var uiImage: UIImage {
        switch self {
        case .cached(let image), .downloaded(let image), .embedded(let image):
            return image
        }
    }

    var image: Image {
        Image(uiImage: uiImage)
    }
}
