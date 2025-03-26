//
//  EmailDataProvider.swift
//  Tangem
//
//

import Foundation

protocol EmailDataProvider {
    var emailData: [EmailCollectedData] { get }
    var emailConfig: EmailConfig? { get }
}
