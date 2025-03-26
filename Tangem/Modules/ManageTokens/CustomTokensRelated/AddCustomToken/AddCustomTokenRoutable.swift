//
//  AddCustomTokenRoutable.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import TangemSdk

protocol AddCustomTokenRoutable: AnyObject {
    func dismiss()
    func openWalletSelector(with dataSource: WalletSelectorDataSource)
    func closeWalletSelector()
    func openNetworkSelector(selectedBlockchainNetworkId: String?, blockchains: [Blockchain])
    func openDerivationSelector(selectedDerivationOption: AddCustomTokenDerivationOption, defaultDerivationPath: DerivationPath, blockchainDerivationOptions: [AddCustomTokenDerivationOption])
}
