//
//  OnrampPaymentMethodsView.swift
//  Tangem
//
//

import SwiftUI

struct OnrampPaymentMethodsView: View {
    @ObservedObject var viewModel: OnrampPaymentMethodsViewModel

    var body: some View {
        GroupedScrollView(spacing: 0) {
            ForEach(viewModel.paymentMethods) {
                OnrampPaymentMethodRowView(data: $0)

                Separator(height: .minimal, color: Colors.Stroke.primary)
                    .padding(.leading, 62)
            }
        }
        .background(Colors.Background.primary)
        .navigationTitle(Text(Localization.onrampPayWith))
    }
}
