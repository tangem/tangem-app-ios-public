//
//  SendDestinationViewModel.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import Foundation
import SwiftUI

class SendDestinationViewModel {
    var destination: Binding<String>

    init(destination: Binding<String>) {
        self.destination = destination
    }
}
