//
//  CheckIconView.swift
//  Tangem
//
//

import SwiftUI

struct CheckIconView: View {
    let isSelected: Bool

    var body: some View {
        Assets.check.image
            .foregroundColor(Colors.Icon.accent)
            /// Need to cover empty place if unchecking
            .opacity(isSelected ? 1 : 0)
            .frame(width: 20, height: 20)
    }
}

struct CheckIconView_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckIconView(isSelected: true)

            CheckIconView(isSelected: false)
        }
        .background(Color.white)
    }
}
