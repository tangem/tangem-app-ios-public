//
//  SendAmountView.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import SwiftUI


struct SendAmountView: View {
    let namespace: Namespace.ID

    let viewModel: SendAmountViewModel

    var body: some View {
        VStack {
            VStack {
                TextField("0.00 USDT", text: viewModel.amountText)
                    .keyboardType(.decimalPad)
            }
            .padding()
            .border(Color.green, width: 5)
            .matchedGeometryEffect(id: "amount", in: namespace)

            Lorem()

            Spacer()

            Button(action: {}, label: {
                Text("set")
            })
        }
        .padding(.horizontal)
    }
}

// #Preview {
//    SendAmountView(viewModel: SendAmountViewModel(amountText: .constant("100 USDT")))
// }
