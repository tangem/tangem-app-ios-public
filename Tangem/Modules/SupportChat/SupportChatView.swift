//
//  ChatView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct SupportChatView: View {
    @ObservedObject var viewModel: SupportChatViewModel
    @Environment(\.dismiss) var dismissAction

    var body: some View {
        VStack {
            //        SprinklrSupportChatView(viewModel: viewModel.sprinklrViewModel)
            Text("Not implemented")

            Button(action: { dismissAction() }, label: {
                Text("Dismiss")
            })
        }
    }
}
