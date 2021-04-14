//
//  Publisher+.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 14.04.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import Combine

extension Publisher where Output: Equatable {
    var uiPublisher: AnyPublisher<Output, Failure> {
        dropFirst()
            .debounce(for: 0.3, scheduler: DispatchQueue.main)
            .removeDuplicates()
            .eraseToAnyPublisher()
    }
    
    var uiPublisherWithFirst: AnyPublisher<Output, Failure> {
            debounce(for: 0.3, scheduler: DispatchQueue.main)
            .removeDuplicates()
            .eraseToAnyPublisher()
    }
}
