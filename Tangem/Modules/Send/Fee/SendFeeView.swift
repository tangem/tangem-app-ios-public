//
//  SendFeeView.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct SendFeeView: View {
    let namespace: Namespace.ID
    let viewModel: SendFeeViewModel

    var body: some View {
        VStack {
            TextField("fee", text: viewModel.fee)
                .padding()
                .border(Color.blue, width: 5)
                .matchedGeometryEffect(id: "fee", in: namespace)

            Spacer()
        }
        .padding(.horizontal)
    }
}

struct SendFeeView_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        SendFeeView(namespace: namespace, viewModel: SendFeeViewModel(input: SendFeeViewModelInputMock()))
    }
}
