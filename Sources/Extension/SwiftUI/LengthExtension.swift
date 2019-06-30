//
//  LengthExtension.swift
//  SwiftyUI
//
//  Created by Niklas Bülow on 30.06.19.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import SwiftUI

public extension Length {
    #if canImport(UIKit)
    /// The width of this device's screen
    static var screenWidth: Self { UIScreen.main.bounds.width }
    /// The height of this device's screen
    static var screenHeight: Self { UIScreen.main.bounds.height }
    #endif
}
