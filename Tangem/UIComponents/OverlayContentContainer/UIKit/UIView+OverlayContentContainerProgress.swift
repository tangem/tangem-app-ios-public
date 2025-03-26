//
//  UIView+OverlayContentContainerProgress.swift
//  Tangem
//
//

import Foundation
import UIKit

extension UIView {
    class func animate(
        with animationContext: OverlayContentContainerProgress.AnimationContext,
        options: UIView.AnimationOptions = [],
        animations: @escaping () -> Void,
        completion: ((_ flag: Bool) -> Void)? = nil
    ) {
        UIView.animate(
            withDuration: animationContext.duration,
            delay: .zero,
            usingSpringWithDamping: animationContext.springDampingRatio,
            initialSpringVelocity: animationContext.initialSpringVelocity,
            options: options.union(animationContext.curve.toAnimationOptions()),
            animations: animations,
            completion: completion
        )
    }
}
