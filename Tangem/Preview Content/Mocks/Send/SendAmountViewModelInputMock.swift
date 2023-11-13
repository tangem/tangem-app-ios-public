//
//  SendAmountViewModelInputMock.swift
//  Tangem
//
//  Created by Andrey Chukavin on 01.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
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
