//
//  WalletConnectCoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct WalletConnectCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: WalletConnectCoordinator

    var body: some View {
        if let model = coordinator.walletConnectViewModel {
            WalletConnectView(viewModel: model)
                .sheet(item: $coordinator.qrScanViewCoordinator) {
                    QRScanViewCoordinatorView(coordinator: $0)
                        .edgesIgnoringSafeArea(.all)
                }
        }
    }
}
