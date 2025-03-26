//
//  Text+.swift
//  Tangem
//
//

import SwiftUI

extension TextField {
    func style(_ font: Font, color: Color) -> some View {
        self.font(font).foregroundColor(color)
    }
}
