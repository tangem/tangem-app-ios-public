//
//  SendFeeViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

protocol SendFeeInput {
    var feeText: String { get set }
    var feeTextBinding: Binding<String> { get }
}

class SendFeeViewModel {
    var fee: Binding<String>

    init(input: SendFeeInput) {
        fee = input.feeTextBinding
    }
}
