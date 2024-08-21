//
//  SendRoutable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

protocol SendRoutable: SendFeeRoutable, SendDestinationRoutable, AnyObject {
    func dismiss()
    func openMail(with dataCollector: EmailDataCollector, recipient: String)
    func openQRScanner(with codeBinding: Binding<String>, networkName: String)
    func openFeeCurrency(for walletModel: WalletModel, userWalletModel: UserWalletModel)
    func openExplorer(url: URL)
    func openShareSheet(url: URL)
}
