//
//  CardInfoPageWarningIconOnlyCellPreviewView.swift
//  Tangem
//
//

import SwiftUI

struct CardInfoPageWarningIconOnlyCellPreviewView: View {
    @ObservedObject var viewModel: CardInfoPageWarningIconOnlyCellPreviewViewModel

    var body: some View {
        HStack {
            if let icon = viewModel.icon {
                Image(uiImage: icon)
            }

            Text("No title provided")
                .foregroundColor(.gray)
        }
        .padding()
        .infinityFrame(alignment: .topLeading)
    }
}
