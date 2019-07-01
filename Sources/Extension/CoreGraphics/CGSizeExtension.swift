//
//  CGSizeExtension.swift
//  SwiftyUI
//
//  Created by Niklas Bülow on 30.06.19.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import CoreGraphics

public extension CGSize {
    /// Creates a square CGSize, this means: **width == height**
    ///
    /// - Parameter side: The length of each side of the square size. This is used as the height and width length.
    init(squareFrom side: CGFloat) {
        self.init(width: side, height: side)
    }
}
