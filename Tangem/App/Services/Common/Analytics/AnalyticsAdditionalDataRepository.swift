//
//  AnalyticsAdditionalDataRepository.swift
//  Tangem
//
//  Created by Andrey Chukavin on 20.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

extension Analytics {
    class AdditionalDataRepository {
        var cardDidScanEvent: Analytics.Event?
        var signedInCardIdentifiers: Set<String> = []
    }
}
