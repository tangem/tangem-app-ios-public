//
//  SendRoutable.swift
//  Tangem
//
//  Created by Alexander Osokin on 17.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

protocol SendRoutable: AnyObject {
    func openMail(with dataCollector: EmailDataCollector)
    func closeModule()
    func openQRScanner(with codeBinding: Binding<String>)
}
