//
//  ScanCardSettingsRoutable.swift
//  Tangem
//
//

import Foundation

protocol ScanCardSettingsRoutable: AnyObject {
    func openCardSettings(with input: CardSettingsViewModel.Input)
}
