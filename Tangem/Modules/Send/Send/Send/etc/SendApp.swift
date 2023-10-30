//
//  SendApp.swift
//  Send
//
//  Created by Andrey Chukavin on 30.10.2023.
//

import SwiftUI

@main
struct SendApp: App {
    let viewModel = SendViewModel(coordinator: MockSendRoutable())

    var body: some Scene {
        WindowGroup {
            SendView(viewModel: viewModel)
        }
    }
}
