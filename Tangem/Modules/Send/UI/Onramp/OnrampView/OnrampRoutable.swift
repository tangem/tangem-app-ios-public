//
//  OnrampRoutable.swift
//  TangemApp
//
//

import TangemExpress

protocol OnrampRoutable {
    func openOnrampCountry(country: OnrampCountry, repository: OnrampRepository)
    func openOnrampCountrySelectorView(repository: OnrampRepository, dataRepository: OnrampDataRepository)
    func openOnrampCurrencySelectorView(repository: OnrampRepository, dataRepository: OnrampDataRepository)

    func openOnrampProviders()
}
