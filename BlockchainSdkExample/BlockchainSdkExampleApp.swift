//
//  BlockchainSdkExampleApp.swift
//  BlockchainSdkExample
//
//

import UIKit
import SwiftUI

@main
struct BlockchainSdkExampleApp: App {
    @StateObject private var model = BlockchainSdkExampleViewModel()

    var body: some Scene {
        WindowGroup {
            BlockchainSdkExampleView()
                .environmentObject(model)
        }
    }
}
