//
//  StakingSendAlertBuilder.swift
//  TangemApp
//
//

import SwiftUI

struct StakingSendAlertBuilder: SendAlertBuilder {
    func makeDismissAlert(dismissAction: @escaping () -> Void) -> AlertBinder {
        let dismissButton = Alert.Button.default(Text(Localization.commonYes), action: dismissAction)
        let cancelButton = Alert.Button.cancel(Text(Localization.commonNo))
        return AlertBuilder.makeAlert(
            title: "",
            message: Localization.stakingDismissMessage,
            primaryButton: dismissButton,
            secondaryButton: cancelButton
        )
    }
}
