//
//  StoriesTangemLogo.swift
//  Tangem
//
//

import SwiftUI

struct StoriesTangemLogo: View {
    var body: some View {
        HStack {
            Assets.tangemLogo.image
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 19)
            Spacer()
        }
        .padding(.top)
    }
}

struct StoriesTangemLogo_Previews: PreviewProvider {
    static var previews: some View {
        StoriesTangemLogo()
    }
}
