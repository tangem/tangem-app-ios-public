//
//  AppPresenter.swift
//  Tangem
//
//

import Foundation
import UIKit
import SwiftUI

class AppPresenter {
    static let shared = AppPresenter()

    private init() {}

    func showError(_ error: Error) {
        show(error.alertController)
    }

    func show(_ controller: UIViewController, delay: TimeInterval = 0.3) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            UIApplication.modalFromTop(controller)
        }
    }
}
