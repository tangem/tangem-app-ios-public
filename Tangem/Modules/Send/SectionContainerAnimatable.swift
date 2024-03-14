//
//  SectionContainerAnimatable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 11.03.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

protocol SectionContainerAnimatable: AnyObject {
    var showSectionContent: Bool { get set }

    func onSectionContentAppear()
    func onSectionContentDisappear()
}

extension SectionContainerAnimatable {
    func onSectionContentAppear() {
        withAnimation(.easeOut(duration: SendView.Constants.animationDuration)) {
            showSectionContent = true
        }
    }

    func onSectionContentDisappear() {
        showSectionContent = false
    }
}
