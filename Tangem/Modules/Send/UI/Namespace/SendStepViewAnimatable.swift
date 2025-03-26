//
//  SendStepViewAnimatable.swift
//  Tangem
//
//

import Foundation

protocol SendStepViewAnimatable {
    func viewDidChangeVisibilityState(_ state: SendStepVisibilityState)
}

enum SendStepVisibilityState: Hashable {
    case appearing(previousStep: SendStepType)
    case appeared
    case disappearing(nextStep: SendStepType)
    case disappeared
}
