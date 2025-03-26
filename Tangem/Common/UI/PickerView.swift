//
//  PickerView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct PickerView: View {
    let contents: [String]
    @Binding var selection: Int

    var body: some View {
        Picker("", selection: $selection) {
            ForEach(0 ..< contents.count, id: \.self) {
                Text(contents[$0]).tag($0)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
