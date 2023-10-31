//
//  SendAmountViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI
import Combine

protocol SendAmountInput {
    var amountText: String { get set }
    var amountTextBinding: Binding<String> { get }
}

protocol SendAmountValidator {
    var amountValid: AnyPublisher<Bool, Never> { get }
}

class SendAmountViewModel: ObservableObject {
    var amountText: Binding<String>

    @Published var hasError = false
    
    init(input: SendAmountInput, validator: SendAmountValidator) {
        amountText = input.amountTextBinding

        validator
            .amountValid
            .map { !$0 }
            .assign(to: &$hasError) // weak
    }
}
