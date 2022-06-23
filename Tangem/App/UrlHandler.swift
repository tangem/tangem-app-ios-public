//
//  UrlHandler.swift
//  Tangem
//
//  Created by Alexander Osokin on 22.03.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol URLHandler: AnyObject {
    @discardableResult
    func handle(url: URL) -> Bool

    @discardableResult
    func handle(url: String) -> Bool
}
