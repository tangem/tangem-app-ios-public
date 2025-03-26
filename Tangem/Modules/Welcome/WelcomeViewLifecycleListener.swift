//
//  WelcomeViewLifecycleListener.swift
//  Tangem
//
//

import Foundation

protocol WelcomeViewLifecycleListener: AnyObject {
    func resignActive()
    func becomeActive()
}
