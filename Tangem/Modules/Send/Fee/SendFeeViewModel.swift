//
//  SendFeeViewModel.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

protocol SendFeeViewModelInput {
    var feeTextBinding: Binding<String> { get }
}

class SendFeeViewModel {
    var fee: Binding<String>

    init(input: SendFeeViewModelInput) {
        fee = input.feeTextBinding
    }
}
