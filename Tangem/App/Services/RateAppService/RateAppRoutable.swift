//
//  RateAppRoutable.swift
//  Tangem
//
//

import Foundation

protocol RateAppRoutable: AnyObject {
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
    func openAppStoreReview()
}
