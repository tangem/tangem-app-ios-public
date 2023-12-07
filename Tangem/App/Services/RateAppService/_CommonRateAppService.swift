//
//  _CommonRateAppService.swift
//  Tangem
//
//  Created by Andrey Fedorov on 07.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

// TODO: Andrey Fedorov - Improve naming
final class _CommonRateAppService {
    @AppStorageCompat(StorageKeys.systemReviewPromptRequestDates)
    private var systemReviewPromptRequestDates: [Date] = []

    func requestRateAppIfAvailable(with request: RateAppRequest) {
        // TODO: Andrey Fedorov - Add actual implementation
    }
}

// MARK: - Auxiliary types

extension _CommonRateAppService {
    struct RateAppRequest {
        let isLocked: Bool
        let totalBalances: [TotalBalanceProvider.TotalBalance]
        let displayedNotifications: [NotificationViewInput]
    }
}

private extension _CommonRateAppService {
    enum StorageKeys: String, RawRepresentable {
        case systemReviewPromptRequestDates = "system_review_prompt_request_dates"
    }
}

// MARK: - Dependency injection

// FIXME: Andrey Fedorov - Test only, remove when not needed
private struct RateAppServiceKey: InjectionKey {
    static var currentValue: _CommonRateAppService = .init()
}

// FIXME: Andrey Fedorov - Test only, remove when not needed
extension InjectedValues {
    var _rateAppService: _CommonRateAppService {
        get { Self[RateAppServiceKey.self] }
        set { Self[RateAppServiceKey.self] = newValue }
    }
}
