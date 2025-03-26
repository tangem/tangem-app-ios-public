//
//  ReferralRoutable.swift
//  Tangem
//
//

import Foundation

protocol ReferralRoutable: AnyObject {
    func openTOS(with url: URL)
    func dismiss()
}
