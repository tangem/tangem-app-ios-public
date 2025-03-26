//
//  WalletConnectRoutable.swift
//  Tangem
//
//

import Foundation
import SwiftUI

protocol WalletConnectRoutable: AnyObject {
    func openQRScanner(with codeBinding: Binding<String>)
}
