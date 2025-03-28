//
//  OnrampProvidersView.swift
//  Tangem
//
//

import SwiftUI

struct OnrampProvidersView: View {
    @ObservedObject private var viewModel: OnrampProvidersViewModel

    init(viewModel: OnrampProvidersViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 22) {
            headerView

            GroupedScrollView(spacing: 0) {
                paymentSection

                FixedSpacer(height: 22)

                providersSection
            }
        }
        .background(Colors.Background.primary)
    }

    private var headerView: some View {
        BottomSheetHeaderView(
            title: Localization.expressChooseProvidersTitle,
            subtitle: Localization.expressChooseProvidersSubtitle
        )
        .padding(.top, 8)
        .padding(.horizontal, 16)
    }

    @ViewBuilder
    private var paymentSection: some View {
        if let data = viewModel.payment {
            OnrampProvidersPaymentView(data: data)
        }
    }

    @ViewBuilder
    private var providersSection: some View {
        ForEach(viewModel.providers) {
            OnrampProviderRowView(data: $0)

            Separator(height: .minimal, color: Colors.Stroke.primary)
                .padding(.leading, 62)
        }
    }
}
