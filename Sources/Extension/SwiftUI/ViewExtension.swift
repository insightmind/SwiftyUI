//
//  ViewExtension.swift
//  SwiftyUI
//
//  Created by Niklas Bülow on 30.06.19.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import SwiftUI

public extension View {
    /// Positions this view with an invisible frame with the specified size
    ///
    /// Use this method to specify a fixed size for a view.
    ///
    /// For example, the first ellipse in the following code is rendered in a
    /// fixed 200 by 100 frame.
    ///
    ///     VStack {
    ///         Ellipse()
    ///         .fill(Color.purple)
    ///         .frame(CGSize(width: 100, height: 100)),
    ///     }
    ///
    /// If this view is smaller than the resulting frame in either dimension,
    /// `alignment` specifies this view's alignment within the frame.
    ///
    ///     Text("Hello world!")
    ///     .frame(CGSize(width: 100, height: 100), alignment: topLeading)
    ///     .border(Color.gray)
    ///
    /// - Parameter frame: The fixed size for the resulting view. If frame is nil, the resulting view assumes this view's sizing behaviour.
    /// - Parameter alignment: The alignment of this view inside the resulting view. alignment applies if this view is smaller than the size given by the resulting frame.
    ///
    /// - Returns: A view with fixed dimensions of width and height, for the parameters that are non-nil.
    func frame(_ frame: CGSize? = nil, alignment: Alignment = .center) -> _ModifiedContent<Self, _FrameLayout> {
        return self.frame(width: frame?.width, height: frame?.height, alignment: alignment)
    }

    /// Positions this view within an invisible frame with the specified size characteristics.
    ///
    /// Always specify at least one size characteristic when calling this
    /// method. Pass `nil` or leave out a characteristic to indicate that
    /// the frame should adopt this view's sizing behavior, constrained by
    /// the other non-`nil` arguments.
    ///
    /// Any non-`nil` minimum, ideal, or maximum parameters specified for
    /// each dimension must be in ascending order.
    ///
    /// - Parameter min: The minimum size for the resulting frame.
    /// - Parameter ideal: The ideal size for the resulting frame.
    /// - Parameter max: The maximum size for the resulting frame.
    /// - Parameter alignment: The alignment of this view inside the resulting frame. alignment applies if this view is smaller than the size given by the resulting frame.
    ///
    /// - Returns: A view with flexible dimensions given by the call’s non-nil parameters.
    func frame(min: CGSize? = nil, ideal: CGSize? = nil, max: CGSize? = nil, alignment: Alignment = .center) -> _ModifiedContent<Self, _FlexFrameLayout> {
        return self.frame(
            minWidth: min?.width,
            idealWidth: ideal?.width,
            maxWidth: max?.width,
            minHeight: min?.height,
            idealHeight: ideal?.height,
            maxHeight: max?.height,
            alignment: alignment
        )
    }
}
