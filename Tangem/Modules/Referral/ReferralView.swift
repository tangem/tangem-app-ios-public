//
//  ReferralView.swift
//  Tangem
//
//  Created by Andrew Son on 02/11/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct ReferralView: View {
    @ObservedObject var viewModel: ReferralViewModel

    var body: some View {
        ScrollView {
            VStack {
                Assets.referralDude
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 40)
                    .frame(maxHeight: 222)
                
                Text("referral_title".localized)
                    .font(Fonts.Bold.title1)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(.horizontal, 57)
                    .padding(.top, 20)
                    .padding(.bottom, 32)
                
                content
                
                Spacer()
            }
        }
        .navigationBarTitle("details_referral_title".localized)
        .background(Colors.Background.secondary.edgesIgnoringSafeArea(.all))
    }

    @ViewBuilder
    var content: some View {
        if viewModel.isLoading {
            loaderContent
        } else {
            referralContent
        }
    }

    @ViewBuilder
    var referralContent: some View {
        // TODO: IOS-2430
        Color.green
    }

    @ViewBuilder
    var loaderContent: some View {
        VStack(alignment: .leading, spacing: 38) {
            ReferralPlaceholderPointView { Assets.cryptocurrencies }
            
            ReferralPlaceholderPointView { Assets.discount }
        }
        .padding(.horizontal, 16)
    }
}



struct ReferralView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReferralView(viewModel: ReferralViewModel(coordinator: ReferralCoordinator()))
        }
    }
}
