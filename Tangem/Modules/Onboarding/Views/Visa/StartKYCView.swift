//
//  StartKYCView.swift
//  Tangem
//
//  Created by Alexander Osokin on 03.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct StartKYCView: View {
    var body: some View {
        VStack {
            Spacer()

            Image(name: "passport")
                .padding(.bottom, 36)
        }
    }
}

struct StartKYCScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartKYCView()
    }
}
