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
    var amountError: AnyPublisher<Error?, Never> { get }
}

class SendAmountViewModel: ObservableObject {
    var amountText: Binding<String>

    @Published var amountError: String?

    init(input: SendAmountInput, validator: SendAmountValidator) {
        amountText = input.amountTextBinding

        validator
            .amountError
            .map { $0?.localizedDescription }
            .assign(to: &$amountError) // weak
    }
}
