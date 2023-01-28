//
//  UrlHandler.swift
//  Tangem
//
//  Created by Alexander Osokin on 22.03.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation

protocol URLHandler: AnyObject {
    func canHandle(url: String) -> Bool
    @discardableResult
    func handle(url: String) -> Bool
}
