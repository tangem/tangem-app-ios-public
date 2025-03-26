//
//  ExpressTokensListAdapter.swift
//  Tangem
//
//

import Foundation
import Combine

protocol ExpressTokensListAdapter {
    func walletModels() -> AnyPublisher<[WalletModel], Never>
}
