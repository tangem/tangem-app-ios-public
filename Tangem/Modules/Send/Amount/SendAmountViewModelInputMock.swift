//
//  SendAmountViewModelInputMock.swift
//  Send
//
//  Created by Andrey Chukavin on 01.11.2023.
//

import SwiftUI
import Combine

class SendAmountViewModelInputMock: SendAmountViewModelInput {
    var amountTextBinding: Binding<String> {
        .constant("100,00")
    }

    var amountError: AnyPublisher<Error?, Never> {
        Just(nil).eraseToAnyPublisher()
    }
}
