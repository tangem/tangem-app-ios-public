//
//  SwappingSuccessRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol SwappingSuccessRoutable: AnyObject {
    func openExplorer(url: URL?, currencyName: String)
    func didTapCloseButton()
}
