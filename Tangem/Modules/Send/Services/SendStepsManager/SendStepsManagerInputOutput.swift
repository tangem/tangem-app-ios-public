//
//  SendStepsManagerInputOutput.swift
//  Tangem
//
//

import Foundation

protocol SendStepsManagerOutput: AnyObject {
    func update(state: SendStepsManagerViewState)
    func update(flowActionType: SendFlowActionType)
}

struct SendStepsManagerViewState {
    let step: SendStep
    let action: SendMainButtonType
    let backButtonVisible: Bool

    init(step: SendStep, action: SendMainButtonType, backButtonVisible: Bool = false) {
        self.step = step
        self.action = action
        self.backButtonVisible = backButtonVisible
    }
}
