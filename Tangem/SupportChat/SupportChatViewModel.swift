//
//  ChatViewModel.swift
//  Tangem
//
//  Created by Pavel Grechikhin on 15.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import ZendeskCoreSDK
import SupportSDK
import SwiftUI

class SupportChatViewModel {
    func chatView() -> some View {
        return SupportChatView()
            .edgesIgnoringSafeArea(.vertical)
    }
}
