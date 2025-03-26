//
//  AppSettingsRoutable.swift
//  Tangem
//
//

import Foundation

protocol AppSettingsRoutable: AnyObject {
    func openTokenSynchronization()
    func openResetSavedCards()
    func openAppSettings()
    func openCurrencySelection()
    func openThemeSelection()
}
