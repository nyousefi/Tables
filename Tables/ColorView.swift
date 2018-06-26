//
//  ColorView.swift
//  Tables
//
//  Created by Nima Yousefi on 6/25/18.
//  Copyright © 2018 Nima Yousefi. All rights reserved.
//

import Cocoa

class ColorView: NSView {
	@IBInspectable var intrinsicHeight: CGFloat = 20
	@IBInspectable var color: NSColor = NSColor.blue

	override var intrinsicContentSize: NSSize {
		return NSSize(width: NSView.noIntrinsicMetric, height: intrinsicHeight)
	}

	override func draw(_ dirtyRect: NSRect) {
		color.setFill()
		dirtyRect.fill()
	}
}
