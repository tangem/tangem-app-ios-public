//
//  BiometryLogoImage.swift
//  Tangem
//
//

import SwiftUI

struct BiometryLogoImage {
    static var image: ImageType {
        switch BiometricAuthorizationUtils.biometryType {
        case .faceID:
            return Assets.Biometry.faceId
        case .touchID:
            return Assets.Biometry.touchId
        case .opticID:
            return ImageType(name: "opticid") // Built-in from SF Symbols
        case .none:
            return ImageType(name: "")
        @unknown default:
            return ImageType(name: "")
        }
    }
}
