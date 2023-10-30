//
//  SendAmountViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

protocol SendAmountInput {
    var amountText: String { get set }
    var amountTextBinding: Binding<String> { get }
}

class SendAmountViewModel {
    var amountText: Binding<String>

    init(input: SendAmountInput) {
        amountText = input.amountTextBinding
    }
}
