//
//  ConfettiType.swift
//  Tangem
//
//

import UIKit

enum ConfettiShape {
    case rectangle
    case circle
    case triangle
}

enum ConfettiPosition {
    case foreground
    case background
}

class ConfettiType {
    let color: UIColor
    let shape: ConfettiShape
    let position: ConfettiPosition

    init(color: UIColor, shape: ConfettiShape, position: ConfettiPosition) {
        self.color = color
        self.shape = shape
        self.position = position
    }

    lazy var name = UUID().uuidString

    lazy var image: UIImage = {
        let imageRect: CGRect = {
            switch shape {
            case .rectangle:
                return CGRect(x: 0, y: 0, width: 20, height: 13)
            case .circle:
                return CGRect(x: 0, y: 0, width: 10, height: 10)
            case .triangle:
                return CGRect(x: 0, y: 0, width: 10, height: 15)
            }
        }()

        UIGraphicsBeginImageContext(imageRect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(color.cgColor)

        switch shape {
        case .rectangle:
            context.fill(imageRect)
        case .circle:
            context.fillEllipse(in: imageRect)
        case .triangle:
            let path = UIBezierPath()
            path.move(to: CGPoint.zero)
            path.addLine(to: CGPoint(x: imageRect.maxX, y: imageRect.minY))
            path.addLine(to: CGPoint(x: imageRect.midX, y: imageRect.maxY))
            path.addLine(to: .zero)
            path.close()
            context.addPath(path.cgPath)
            context.fillPath()
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }()
}
