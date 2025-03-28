//
//  View+DetentBottomSheet.swift
//  Tangem
//
//

import SwiftUI

extension View {
    /// - Parameters:
    ///   - item: It'ill be used for create the content
    ///   - detents: Map detents list for any ios version
    ///   - settings: You can setup the sheet's appearance
    ///   - sheetContent: View for `sheetContent`
    @ViewBuilder
    func detentBottomSheet<Item: Identifiable, ContentView: View>(
        item: Binding<Item?>,
        detents: Set<BottomSheetDetent> = [.large],
        settings: DetentBottomSheetContainer<ContentView>.Settings = .init(),
        @ViewBuilder sheetContent: @escaping (Item) -> ContentView
    ) -> some View {
        modifier(
            DetentBottomSheetModifier(
                item: item,
                detents: detents,
                settings: settings,
                sheetContent: sheetContent
            )
        )
    }
}
