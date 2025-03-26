//
//  MarketsListDataFetcher.swift
//  Tangem
//
//

import Foundation

protocol MarketsListDataFetcher: AnyObject {
    var canFetchMore: Bool { get }
    var totalItems: Int { get }
    func fetchMore()
}
