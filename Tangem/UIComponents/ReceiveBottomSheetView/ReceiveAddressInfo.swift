//
//  ReceiveAddressInfo.swift
//  Tangem
//
//

import Foundation
import UIKit
import BlockchainSdk

struct ReceiveAddressInfo: Identifiable, Hashable {
    var id: String { type.rawValue }
    let address: String
    let type: AddressType
    let localizedName: String
    /// Need to store in this struct to prevent recreating UIImage again and again in UI
    let addressQRImage: UIImage
}
