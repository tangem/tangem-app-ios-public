//
//  SendFeeViewModelInputMock.swift
//  Send
//
//  Created by Andrey Chukavin on 01.11.2023.
//

import SwiftUI
import Combine

class SendFeeViewModelInputMock: SendFeeViewModelInput {
    var feeTextBinding: Binding<String> { .constant("Fee") }
}
