//
//  UIViewController+.swift
//  Tangem
//
//

import Foundation
import UIKit

extension UIViewController {
    @objc var topViewController: UIViewController? { return presentedViewController?.topViewController ?? self }
}

extension UITabBarController {
    override var topViewController: UIViewController? {
        return selectedViewController?.topViewController
    }
}

extension UIWindow {
    var topViewController: UIViewController? {
        return rootViewController?.topViewController
    }
}
