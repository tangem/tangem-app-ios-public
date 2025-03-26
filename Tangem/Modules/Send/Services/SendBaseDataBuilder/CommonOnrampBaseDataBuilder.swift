//
//  CommonOnrampBaseDataBuilder.swift
//  TangemApp
//
//

import TangemExpress

protocol OnrampBaseDataBuilderInput {}

struct CommonOnrampBaseDataBuilder {
    private let onrampRepository: OnrampRepository
    private let onrampDataRepository: OnrampDataRepository

    init(
        onrampRepository: OnrampRepository,
        onrampDataRepository: OnrampDataRepository
    ) {
        self.onrampRepository = onrampRepository
        self.onrampDataRepository = onrampDataRepository
    }
}

// MARK: - OnrampBaseDataBuilder

extension CommonOnrampBaseDataBuilder: OnrampBaseDataBuilder {
    func makeDataForOnrampCountryBottomSheet() -> OnrampRepository {
        return onrampRepository
    }

    func makeDataForOnrampCountrySelectorView() -> (preferenceRepository: OnrampRepository, dataRepository: OnrampDataRepository) {
        return (preferenceRepository: onrampRepository, dataRepository: onrampDataRepository)
    }
}
