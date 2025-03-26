//
//  SendRoutable.swift
//  Tangem
//
//

import Foundation
import SwiftUI
import TangemExpress

protocol SendRoutable: SendFeeRoutable, SendDestinationRoutable, OnrampRoutable, AnyObject {
    func dismiss()
    func openMail(with dataCollector: EmailDataCollector, recipient: String)
    func openQRScanner(with codeBinding: Binding<String>, networkName: String)
    func openFeeCurrency(for walletModel: WalletModel, userWalletModel: UserWalletModel)
    func openExplorer(url: URL)
    func openShareSheet(url: URL)
    func openApproveView(settings: ExpressApproveViewModel.Settings, approveViewModelInput: any ApproveViewModelInput)
}
