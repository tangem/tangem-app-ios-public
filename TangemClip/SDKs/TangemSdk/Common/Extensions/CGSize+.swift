//
//  CGSize+.swift
//  infoScreenAnim
//
//  Created by Andrew Son on 11/2/20.
//

import CoreGraphics

internal extension CGSize {
	static func / (left: CGSize, right: CGFloat) -> CGSize {
		CGSize(width: left.width / right, height: left.height / right)
	}
	
	static func * (left: CGSize, right: CGFloat) -> CGSize {
		CGSize(width: left.width * right, height: left.height * right)
	}
}
