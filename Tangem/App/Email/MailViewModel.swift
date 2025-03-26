//
//  MailViewModel.swift
//  Tangem
//
//

import Foundation

struct MailViewModel: Identifiable {
    let id: UUID = .init()

    let logsComposer: LogsComposer
    let recipient: String
    let emailType: EmailType
}
