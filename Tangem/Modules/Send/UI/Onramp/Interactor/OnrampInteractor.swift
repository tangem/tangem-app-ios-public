//
//  OnrampInteractor.swift
//  TangemApp
//
//

import Combine
import TangemExpress

protocol OnrampInteractor: AnyObject {
    var isValidPublisher: AnyPublisher<Bool, Never> { get }
}

class CommonOnrampInteractor {
    private weak var input: OnrampInput?
    private weak var output: OnrampOutput?

    private let _isValid: CurrentValueSubject<Bool, Never> = .init(true)

    init(input: OnrampInput, output: OnrampOutput) {
        self.input = input
        self.output = output
    }
}

// MARK: - OnrampInteractor

extension CommonOnrampInteractor: OnrampInteractor {
    var isValidPublisher: AnyPublisher<Bool, Never> {
        _isValid.eraseToAnyPublisher()
    }
}
