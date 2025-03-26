//
//  View+AlertBinder.swift
//  Tangem
//
//

import SwiftUI

extension View {
    /// This binder is safier than just adding `alert` modifier to the view.
    /// When you add `alert` modifier to the parent and child view, child view will not be able to display alert
    /// So we need to wrap alerts in background views to fix this. Same fix as for navigation
    func bindAlert(_ item: Binding<AlertBinder?>) -> some View {
        background(
            Color.clear
                .alert(item: item) { $0.alert }
        )
    }
}
