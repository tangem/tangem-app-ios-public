//
//  SupportChatViewModel.swift
//  Tangem
//
//

import Foundation
import Combine
import SwiftUI

class SupportChatViewModel: ObservableObject, Identifiable {
//    @Published var sprinklrViewModel = SprinklrSupportChatViewModel()
    private let input: SupportChatInputModel

    init(input: SupportChatInputModel) {
        self.input = input
    }
}
