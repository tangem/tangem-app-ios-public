//
//  UrlHandler.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 22.03.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol URLHandler: class {
    func handle(url: URL) -> Bool
    func handle(url: String) -> Bool
}
