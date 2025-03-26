//
//  SendDestinationRoutable.swift
//  Tangem
//
//

import Foundation
import SwiftUI

protocol SendDestinationRoutable: AnyObject {
    func openQRScanner(with codeBinding: Binding<String>, networkName: String)
}

protocol SendDestinationStepRoutable: AnyObject {
    func destinationStepFulfilled()
}
