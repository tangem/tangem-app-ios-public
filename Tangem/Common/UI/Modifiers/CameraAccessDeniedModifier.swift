//
//  CameraAccessDeniedModifier.swift
//  Tangem
//
//

import SwiftUI

struct CameraAccessDeniedModifier: ViewModifier {
    @Binding var isDisplayed: Bool

    func body(content: Content) -> some View {
        content
            .alert(isPresented: $isDisplayed) {
                return Alert(
                    title: Text(Localization.commonCameraDeniedAlertTitle),
                    message: Text(Localization.commonCameraDeniedAlertMessage),
                    primaryButton: Alert.Button.default(
                        Text(Localization.commonCameraAlertButtonSettings),
                        action: { UIApplication.openSystemSettings() }
                    ),
                    secondaryButton: Alert.Button.default(
                        Text(Localization.commonOk),
                        action: {}
                    )
                )
            }
    }
}

extension View {
    func cameraAccessDeniedAlert(_ isDisplayed: Binding<Bool>) -> some View {
        modifier(CameraAccessDeniedModifier(isDisplayed: isDisplayed))
    }
}
