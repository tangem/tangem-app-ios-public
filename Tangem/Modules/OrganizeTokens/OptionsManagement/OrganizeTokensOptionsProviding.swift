//
//  OrganizeTokensOptionsProviding.swift
//  Tangem
//
//

import Foundation
import Combine

protocol OrganizeTokensOptionsProviding {
    var groupingOption: AnyPublisher<UserTokensReorderingOptions.Grouping, Never> { get }
    var sortingOption: AnyPublisher<UserTokensReorderingOptions.Sorting, Never> { get }
}
