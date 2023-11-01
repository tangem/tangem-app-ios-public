//
//  SendSummaryRoutable.swift
//  Send
//
//  Created by Andrey Chukavin on 01.11.2023.
//

import Foundation

protocol SendSummaryRoutable {
    func openStep(_ step: SendStep)
    func send()
}
