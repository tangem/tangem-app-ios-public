//
//  SendRoutable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol SendRoutable: AnyObject {
    func explore(url: URL)
    func share(url: URL)
    func dismiss()
}
