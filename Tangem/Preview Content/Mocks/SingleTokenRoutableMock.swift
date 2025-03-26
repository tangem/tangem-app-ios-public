//
//  SingleTokenRoutableMock.swift
//  Tangem
//
//

import Foundation
import Combine

class SingleTokenRoutableMock: SingleTokenRoutable {
    var errorAlertPublisher: AnyPublisher<AlertBinder?, Never> { .just(output: nil) }

    func openReceive(walletModel: WalletModel) {}

    func openBuyCryptoIfPossible(walletModel: WalletModel) {}

    func openSend(walletModel: WalletModel) {}

    func openExchange(walletModel: WalletModel) {}

    func openStaking(walletModel: WalletModel) {}

    func openSell(for walletModel: WalletModel) {}

    func openSendToSell(with request: SellCryptoRequest, for walletModel: WalletModel) {}

    func openExplorer(at url: URL, for walletModel: WalletModel) {}

    func openMarketsTokenDetails(for tokenItem: TokenItem) {}

    func openInSafari(url: URL) {}
}
