//
//  NegativeFeedbackDataProvider.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol NegativeFeedbackDataProvider: EmailDataCollector {}

private struct NegativeFeedbackDataProviderKey: InjectionKey {
    static var currentValue: NegativeFeedbackDataProvider = NegativeFeedbackDataCollector()
}

extension InjectedValues {
    var negativeFeedbackDataProvider: NegativeFeedbackDataProvider {
        get { Self[NegativeFeedbackDataProviderKey.self] }
        set { Self[NegativeFeedbackDataProviderKey.self] = newValue }
    }
}
