//
//  CommonOnrampStepsManager.swift
//  TangemApp
//
//

import Foundation
import Combine

class CommonOnrampStepsManager {
    private let onrampStep: OnrampStep
    private let finishStep: SendFinishStep
    private let coordinator: OnrampRoutable
    private let shouldActivateKeyboard: Bool

    private var stack: [SendStep]
    private weak var output: SendStepsManagerOutput?

    init(
        onrampStep: OnrampStep,
        finishStep: SendFinishStep,
        coordinator: OnrampRoutable,
        shouldActivateKeyboard: Bool
    ) {
        self.onrampStep = onrampStep
        self.finishStep = finishStep
        self.coordinator = coordinator
        self.shouldActivateKeyboard = shouldActivateKeyboard

        stack = [onrampStep]
    }

    private func next(step: SendStep) {
        stack.append(step)

        switch step.type {
        case .finish:
            output?.update(state: .init(step: step, action: .close))
        case .amount, .destination, .fee, .summary, .validators, .onramp:
            assertionFailure("There is no next step")
        }
    }
}

// MARK: - SendStepsManager

extension CommonOnrampStepsManager: SendStepsManager {
    var initialKeyboardState: Bool { shouldActivateKeyboard }

    var initialFlowActionType: SendFlowActionType {
        .onramp
    }

    var initialState: SendStepsManagerViewState {
        .init(step: onrampStep, action: .action, backButtonVisible: false)
    }

    var shouldShowDismissAlert: Bool {
        return false
    }

    func set(output: SendStepsManagerOutput) {
        self.output = output
    }

    func performBack() {
        assertionFailure("There's not back action in this flow")
    }

    func performNext() {
        assertionFailure("There's not next action in this flow")
    }

    func performFinish() {
        next(step: finishStep)
    }

    func performContinue() {
        assertionFailure("There's not continue action in this flow")
    }
}
