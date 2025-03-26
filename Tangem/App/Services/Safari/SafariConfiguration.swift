//
//  SafariConfiguration.swift
//  Tangem
//
//

import Foundation

struct SafariConfiguration {
    var dismissButtonStyle: DismissButtonStyle = .close
}

extension SafariConfiguration {
    enum DismissButtonStyle {
        case done
        case close
        case cancel
    }
}
