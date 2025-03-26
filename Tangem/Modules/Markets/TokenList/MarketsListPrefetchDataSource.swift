//
//  MarketsListPrefetchDataSource.swift
//  Tangem
//
//

import Foundation

protocol MarketsListPrefetchDataSource: AnyObject {
    // Instructs your prefetch data source object to begin preparing data for the cells at the supplied index paths.
    func prefetchRows(at index: Int)

    // Cancels a previously triggered data prefetch request.
    func cancelPrefetchingForRows(at index: Int)
}
