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
    init?(_ colorSpace: Color.RGBColorSpace = .sRGB, hex: String) {
        let red, green, blue, opacity: Double
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

        let hexSize = 8

        // We need at least 8 digits to represent the hex color. So for we cut the rest or add 0 to it
        if hexColor.count < hexSize {
            let difference = hexSize - hexColor.count
            (0..<difference).forEach { _ in hexColor.append("F") }
        } else if hexColor.count > hexSize {
            let index = hexColor.index(hexColor.startIndex, offsetBy: hexSize)
            hexColor = String(hexColor[index...])
        }

        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0

        // We use the scanner to check whether the string is a valid hexadecimal
        guard scanner.scanHexInt64(&hexNumber) else { return nil }

        // Now we decode the information of the hex into the 0 to 1 spektrum
        red = Double((hexNumber & 0xff000000) >> 24) / 255
        green = Double((hexNumber & 0x00ff0000) >> 16) / 255
        blue = Double((hexNumber & 0x0000ff00) >> 8) / 255
        opacity = Double(hexNumber & 0x000000ff) / 255

        // We use our default color intializer to create the color.
        self.init(colorSpace, red: red, green: green, blue: blue, opacity: opacity)
    }
}
