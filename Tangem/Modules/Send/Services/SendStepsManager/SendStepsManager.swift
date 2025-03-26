//
//  SendStepsManager.swift
//  Tangem
//
//

import Foundation
import Combine

protocol SendStepsManager {
    var initialKeyboardState: Bool { get }
    var initialFlowActionType: SendFlowActionType { get }
    var initialState: SendStepsManagerViewState { get }

    var shouldShowDismissAlert: Bool { get }

    func performNext()
    func performBack()

    func performContinue()
    func performFinish()

    func set(output: SendStepsManagerOutput)
}
