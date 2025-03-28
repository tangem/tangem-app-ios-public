//
//  WelcomeView.swift
//  Tangem
//
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var viewModel: WelcomeViewModel

    var body: some View {
        storiesView
            .alert(item: $viewModel.error, content: { $0.alert })
            .environment(\.colorScheme, .dark)
            .onAppear(perform: viewModel.onAppear)
            .onDidAppear(perform: viewModel.onDidAppear)
            .onDisappear(perform: viewModel.onDisappear)
            .background(
                ScanTroubleshootingView(
                    isPresented: $viewModel.showTroubleshootingView,
                    tryAgainAction: viewModel.tryAgain,
                    requestSupportAction: viewModel.requestSupport,
                    openScanCardManualAction: viewModel.openScanCardManual
                )
            )
    }

    var storiesView: some View {
        StoriesView(viewModel: viewModel.storiesModel) { [weak viewModel] in
            if let viewModel = viewModel {
                viewModel.storiesModel.currentStoryPage(
                    isScanning: $viewModel.isScanningCard,
                    scanCard: viewModel.scanCardTapped,
                    orderCard: viewModel.orderCard,
                    openPromotion: viewModel.openPromotion,
                    searchTokens: viewModel.openTokensList
                )
            }
        }
    }
}

struct WelcomeOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(viewModel: WelcomeViewModel(shouldScanOnAppear: false, coordinator: WelcomeCoordinator()))
    }
}
