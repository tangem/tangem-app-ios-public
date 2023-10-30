//
//  SendFeeView.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import SwiftUI

struct SendFeeView: View {
    let namespace: Namespace.ID
    let viewModel: SendFeeViewModel

    var body: some View {
        VStack {
            VStack {
                TextField("fee", text: viewModel.fee)
//                TextField("0.00 USDT", text: viewModel.amountText)
//                    .keyboardType(.decimalPad)
            }
            .padding()
            .border(Color.blue, width: 5)
            .matchedGeometryEffect(id: "fee", in: namespace)

            Spacer()

            Button(action: {}, label: {
                Text("set")
            })
        }
        .padding()
    }
}

//
// #Preview {
//    SendFeeView()
// }
