//
//  MultipleAddressProvider.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public protocol MultipleAddressProvider {
    func makeAddresses(from walletPublicKey: Data) -> [Address]
}

public protocol MultisigAddressProvider {
	func makeAddresses(from walletPublicKey: Data, with pairPublicKey: Data) -> [Address]?
}
