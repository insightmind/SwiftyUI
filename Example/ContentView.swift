//
//  ContentView.swift
//  Example
//
//  Created by Niklas Bülow on 30.06.19.
//  Copyright © 2019 SwiftyUI. All rights reserved.
//

import SwiftUI
import SwiftyUI

struct ContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            .color(Color(hex: "#000000"))
            .frame(CGSize(squareFrom: 200))
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
