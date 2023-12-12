//
//  RateAppServiceDelegate.swift
//  Tangem
//
//  Created by Andrey Fedorov on 09.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol RateAppServiceDelegate: AnyObject {
    func rateAppService(
        _ service: RateAppService,
        didRequestRateAppWithCompletionHandler completionHandler: @escaping (_ result: RateAppResult) -> Void
    )

    func rateAppService(
        _ service: RateAppService,
        didRequestOpenMailWithEmailType emailType: EmailType
    )

    func requestAppStoreReviewForRateAppService(_ service: RateAppService)
}
