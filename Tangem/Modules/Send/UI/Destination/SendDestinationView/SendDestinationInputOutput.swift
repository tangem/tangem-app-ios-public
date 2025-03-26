//
//  SendDestinationInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine

protocol SendDestinationInput: AnyObject {
    var destinationPublisher: AnyPublisher<SendAddress, Never> { get }
    var additionalFieldPublisher: AnyPublisher<SendDestinationAdditionalField, Never> { get }
}

protocol SendDestinationOutput: AnyObject {
    func destinationDidChanged(_ address: SendAddress?)
    func destinationAdditionalParametersDidChanged(_ type: SendDestinationAdditionalField)
}
