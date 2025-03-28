//
//  WelcomeOnboardingPushNotificationsView.swift
//  Tangem
//
//

import SwiftUI

struct WelcomeOnboardingPushNotificationsView: View {
    let viewModel: PushNotificationsPermissionRequestViewModel

    var body: some View {
        VStack(spacing: 0.0) {
            FixedSpacer.vertical(20.0 + OnboardingLayoutConstants.navbarSize.height)

            PushNotificationsPermissionRequestView(
                viewModel: viewModel,
                topInset: -OnboardingLayoutConstants.progressBarPadding,
                buttonsAxis: .vertical
            )
        }
    }
}

// MARK: - Previews

#Preview {
    let viewModel = PushNotificationsPermissionRequestViewModel(
        permissionManager: PushNotificationsPermissionManagerStub(),
        delegate: PushNotificationsPermissionRequestDelegateStub()
    )

    return VStack {
        WelcomeOnboardingPushNotificationsView(viewModel: viewModel)

        Spacer()

        WelcomeOnboardingPushNotificationsView(viewModel: viewModel)
    }
}
