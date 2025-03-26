//
//  QRScanViewCoordinatorView.swift
//  Tangem
//
//

import SwiftUI

struct QRScanViewCoordinatorView: CoordinatorView {
    @ObservedObject var coordinator: QRScanViewCoordinator

    init(coordinator: QRScanViewCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        ZStack {
            if let rootViewModel = coordinator.rootViewModel {
                QRScanView(viewModel: rootViewModel)
            }

            sheets
        }
    }

    @ViewBuilder
    private var sheets: some View {
        NavHolder()
            .sheet(item: $coordinator.imagePickerModel) {
                PhotoSelectorView(viewModel: $0)
                    .edgesIgnoringSafeArea(.all)
            }
    }
}
