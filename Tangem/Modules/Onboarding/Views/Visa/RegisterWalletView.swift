//
//  RegisterWalletView.swift
//  Tangem
//
//  Created by Alexander Osokin on 03.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct RegisterWalletView: View {
    var body: some View {
        VStack {
            Spacer()

            Image(name: "cards_wallet")
                .padding(.bottom, 36)
        }
    }
}

struct RegisterWalletView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterWalletView()
    }
}
