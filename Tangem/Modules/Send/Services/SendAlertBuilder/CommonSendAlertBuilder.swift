//
//  CommonSendAlertBuilder.swift
//  TangemApp
//
//

import SwiftUI

struct CommonSendAlertBuilder: SendAlertBuilder {
    func makeDismissAlert(dismissAction: @escaping () -> Void) -> AlertBinder {
        let dismissButton = Alert.Button.default(Text(Localization.commonYes), action: dismissAction)
        let cancelButton = Alert.Button.cancel(Text(Localization.commonNo))
        return AlertBuilder.makeAlert(
            title: "",
            message: Localization.sendDismissMessage,
            primaryButton: dismissButton,
            secondaryButton: cancelButton
        )
    }
}
