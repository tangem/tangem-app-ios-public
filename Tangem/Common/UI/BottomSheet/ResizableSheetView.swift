//
//  ResizableSheetView.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 15.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

enum ResizeSheetAction {
    case incrementSheetHeight(byValue: CGFloat)
    case decrementSheetHeight(byValue: CGFloat)
    case setNewSheetHeight(value: CGFloat)
}

protocol ResizableSheetView: View {
    func updateHeight(callback: @escaping ((ResizeSheetAction) -> ()))
}

struct BottomSheetEmptyView: ResizableSheetView {
    var body: some View {
        EmptyView()
    }

    func updateHeight(callback: @escaping ((ResizeSheetAction) -> ())) { }
}
