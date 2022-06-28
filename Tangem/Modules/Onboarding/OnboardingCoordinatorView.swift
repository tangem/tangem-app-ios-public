//
//  OnboardingCoordinatorView.swift
//  Tangem
//
//  Created by Alexander Osokin on 14.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct OnboardingCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: OnboardingCoordinator
    
    var body: some View {
        ZStack {
            content
                .transition(.withoutOpacity)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
            
            NavHolder()
                .sheet(item: $coordinator.buyCryptoModel) {
                    WebViewContainer(viewModel: $0)
                }
            
            NavHolder()
                .sheet(item: $coordinator.accessCodeModel) {
                    OnboardingAccessCodeView(viewModel: $0)
                }
            
            BottomSheetView(isPresented: coordinator.$qrBottomSheetKeeper,
                            hideBottomSheetCallback: coordinator.hideQrBottomSheet,
                            content: { addressQrBottomSheetContent })
            // .frame(maxWidth: screenSize.width) //UISCreen.main.bounds TODO: check it
        }
    }
    
    @ViewBuilder
    private var content: some View {
        if let singleCardViewModel = coordinator.singleCardViewModel {
            SingleCardOnboardingView(viewModel: singleCardViewModel)
        } else if let twinsViewModel = coordinator.twinsViewModel {
            TwinsOnboardingView(viewModel: twinsViewModel)
        } else if let walletViewModel = coordinator.walletViewModel {
            WalletOnboardingView(viewModel: walletViewModel)
        }
    }
    
    @ViewBuilder
    private var addressQrBottomSheetContent: some View {
        if let model = coordinator.addressQrBottomSheetContentViewVodel {
            AddressQrBottomSheetContent(viewModel: model)
        }
    }
}
