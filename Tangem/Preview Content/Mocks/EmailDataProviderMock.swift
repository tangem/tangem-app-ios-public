//
//  EmailDataProviderMock.swift
//  Tangem
//
//

import Foundation

class EmailDataProviderMock: EmailDataProvider {
    var emailData: [EmailCollectedData] { [] }
    var emailConfig: EmailConfig? { nil }
}
