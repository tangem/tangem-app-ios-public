//
//  SendAmountViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

class SendAmountViewModel {
    var amountText: Binding<String>

    init(amountText: Binding<String>) {
        self.amountText = amountText
    }
}
