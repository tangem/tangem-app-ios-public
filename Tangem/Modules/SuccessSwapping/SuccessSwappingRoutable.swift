//
//  SuccessSwappingRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 18.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol SuccessSwappingRoutable: AnyObject {
    func openExplorer(url: URL?, displayName: String)
    func didTapCloseButton()
}
