//
//  SendModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

class SendModel: ObservableObject {
    @Published var amountText: String = "100"
    var amountTextBinding: Binding<String> {
        Binding(get: { self.amountText }, set: { self.amountText = $0 })
    }
}

extension SendModel: SendAmountInput {}
