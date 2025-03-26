//
//  SendFinishInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine

protocol SendFinishInput: AnyObject {
    var transactionSentDate: AnyPublisher<Date, Never> { get }
}
