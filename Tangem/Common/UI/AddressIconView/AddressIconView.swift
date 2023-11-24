//
//  AddressIconView.swift
//  Tangem
//
//  Created by Andrey Chukavin on 02.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct AddressIconView: View {
    let viewModel: AddressIconViewModel

    var body: some View {
        Colors.Background.tertiary
            .clipShape(Circle())
            .overlay(
                Image(systemName: "rectangle.checkered")
                    .foregroundColor(.blue)
            )
    }
}

struct AddressIconView_Previews: PreviewProvider {
    static var previews: some View {
        AddressIconView(viewModel: AddressIconViewModel(address: "0x0123123"))
            .frame(size: .init(bothDimensions: 40))
    }
}
