//
//  MainBottomSheetOverlayView.swift
//  Tangem
//
//  Created by Andrey Fedorov on 17.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct MainBottomSheetOverlayView: View {
    let viewModel: MainBottomSheetOverlayViewModel

    var body: some View {
        Group {
            switch viewModel {
            case .generateAddresses(let viewModel):
                GenerateAddressesView(viewModel: viewModel)
            }
        }
        .infinityFrame(alignment: .bottom)
    }
}
