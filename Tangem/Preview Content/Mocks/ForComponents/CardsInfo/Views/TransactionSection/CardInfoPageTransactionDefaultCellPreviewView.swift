//
//  CardInfoPageTransactionDefaultCellPreviewView.swift
//  Tangem
//
//

import SwiftUI

struct CardInfoPageTransactionDefaultCellPreviewView: View {
    @ObservedObject var viewModel: CardInfoPageTransactionDefaultCellPreviewViewModel

    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.caption)
                .fontWeight(.bold)
                .lineLimit(1)
                .allowsTightening(true)

            Button("Press me!", action: viewModel.onTap)
        }
        .frame(height: 68.0)
    }
}
