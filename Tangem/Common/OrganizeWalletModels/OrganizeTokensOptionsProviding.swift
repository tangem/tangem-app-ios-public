//
//  OrganizeTokensOptionsProviding.swift
//  Tangem
//
//  Created by Andrey Fedorov on 05.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol OrganizeTokensOptionsProviding {
    var groupingOption: AnyPublisher<OrganizeTokensOptions.Grouping, Never> { get }
    var sortingOption: AnyPublisher<OrganizeTokensOptions.Sorting, Never> { get }
}
