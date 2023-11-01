//
//  SendDestinationView.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import SwiftUI

struct SendDestinationView: View {
    let namespace: Namespace.ID
    @ObservedObject var viewModel: SendDestinationViewModel

    var body: some View {
        VStack {
            VStack {
                TextField("Enter address", text: viewModel.destination)
            }
            .padding()
            .border(Color.purple, width: 5)
            .matchedGeometryEffect(id: "dest", in: namespace)

            Text(viewModel.destinationErrorText ?? " ")
                .foregroundColor(.red)

            VStack {
                TextField("Enter memo", text: viewModel.additionalField)
            }
            .padding()
            .border(Color.purple, width: 5)

            Text(viewModel.destinationAdditionalFieldErrorText ?? " ")
                .foregroundColor(.red)

            Spacer()

            Button(action: {}, label: {
                Text("set")
            })
        }
        .padding(.horizontal)
    }
}

// #Preview {
//    SendDestinationView()
// }
