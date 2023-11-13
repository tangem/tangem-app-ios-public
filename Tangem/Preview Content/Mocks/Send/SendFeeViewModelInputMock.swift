//
//  SendFeeViewModelInputMock.swift
//  Tangem
//
//  Created by Andrey Chukavin on 01.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI
import Combine

class SendFeeViewModelInputMock: SendFeeViewModelInput {
    var feeTextBinding: Binding<String> { .constant("Fee") }
}
