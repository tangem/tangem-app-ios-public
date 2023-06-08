//
//  SelectableSwappingFeeRowViewModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 13.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct SelectableSwappingFeeRowViewModel: Hashable, Identifiable {
    var id: Int { hashValue }

    let title: String
    let subtitle: String
    let isSelected: BindingValue<Bool>
}
