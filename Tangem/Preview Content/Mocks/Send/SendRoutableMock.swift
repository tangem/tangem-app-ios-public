//
//  SendRoutableMock.swift
//  Tangem
//
//

import Foundation
import SwiftUI
import TangemExpress

class SendRoutableMock: SendRoutable {
    func dismiss() {}
    func openFeeExplanation(url: URL) {}
    func openMail(with dataCollector: EmailDataCollector, recipient: String) {}
    func openExplorer(url: URL) {}
    func openShareSheet(url: URL) {}
    func openQRScanner(with codeBinding: Binding<String>, networkName: String) {}
    func openFeeCurrency(for walletModel: WalletModel, userWalletModel: UserWalletModel) {}
    func openApproveView(settings: ExpressApproveViewModel.Settings, approveViewModelInput: any ApproveViewModelInput) {}
    func openOnrampCountry(country: OnrampCountry, repository: any OnrampRepository) {}
    func openOnrampCountrySelectorView(repository: any OnrampRepository, dataRepository: any OnrampDataRepository) {}

    func openOnrampCurrencySelectorView(repository: any OnrampRepository, dataRepository: any OnrampDataRepository) {}

    func openOnrampProviders() {}
}
