//
//  SendSummaryView.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import SwiftUI

struct SendSummaryView: View {
    let height = 100.0

    let sendViewModel: SendViewModel

    var body: some View {
        VStack(spacing: 20) {
            Color.red
                .frame(maxHeight: height)
                .onTapGesture {
                    sendViewModel.didTapSummary(step: .amount)
                }

            Color.purple
                .frame(maxHeight: height)
                .onTapGesture {
                    sendViewModel.didTapSummary(step: .destination)
                }

            Color.blue
                .frame(maxHeight: height)
                .onTapGesture {
                    sendViewModel.didTapSummary(step: .fee)
                }

            Spacer()
        }
    }
}

#Preview {
    SendSummaryView(sendViewModel: SendViewModel(coordinator: MockSendRoutable()))
}
