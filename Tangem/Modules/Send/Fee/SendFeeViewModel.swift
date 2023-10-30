//
//  SendFeeViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

class SendFeeViewModel {
    var fee: Binding<String>

    init(fee: Binding<String>) {
        self.fee = fee
    }
}
