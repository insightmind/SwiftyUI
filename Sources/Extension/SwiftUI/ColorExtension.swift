//
//  ColorExtension.swift
//  SwiftyUI
//
//  Created by Niklas Bülow on 30.06.19.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import SwiftUI

public extension Color {
    /// Creates an instance of Color by using a colors hex representation
    ///
    /// This intiializer fails if the hexString is invalid.
    /// If the size of the hex is to small this method adds "F"
    /// If the size is to big we cut the rest of the String.
    ///
    /// You can use this method without a preceding and with a preceding **#** symbol.
    ///
    /// - Parameter colorSpace: The colorspace in which this color is represented.
    /// - Parameter hex: The hex value of the color as a String
    init?(_ colorSpace: Color.RGBColorSpace = .sRGB, hex: String, opacity: Double) {
        let red, green, blue, alpha: Double
        var hexColor: String

        // We need to check whether the hex string starts with a hashtag
        // as standardized in hexadecimal usage.
        if hex.hasPrefix("#") {
            // We adjust the startIndex to the index after the #
            let start = hex.index(hex.startIndex, offsetBy: 1)
            hexColor = String(hex[start...])
        } else {
            hexColor = hex
        }

        // We need exactly 6 digits to represent the hex color properties.
        guard hexColor.count == 6 else { return nil }
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0

        // We use the scanner to check whether the string is a valid hexadecimal
        guard scanner.scanHexInt64(&hexNumber) else { return nil }

        // Now we decode the information of the hex into the 0 to 1 spektrum
        red = Double((hexNumber & 0xff000000) >> 24) / 255
        green = Double((hexNumber & 0x00ff0000) >> 16) / 255
        blue = Double((hexNumber & 0x0000ff00) >> 8) / 255

        // We clamp the opacity by a range from (0...1)
        alpha = opacity > 1 ? 1 : (opacity < 0 ? 0 : opacity)

        // We use our default color intializer to create the color.
        self.init(colorSpace, red: red, green: green, blue: blue, opacity: alpha)
    }
}
