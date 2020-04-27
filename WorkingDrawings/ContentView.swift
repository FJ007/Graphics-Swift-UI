//
//  ContentView.swift
//  WorkingDrawings
//
//  Created by Javier Fernández on 21/04/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

// https://developer.apple.com/documentation/swiftui/path
// https://developer.apple.com/documentation/uikit/uicolor/standard_colors


import SwiftUI

struct ContentView: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 30, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 150))
            path.addLine(to: CGPoint(x: 30, y: 150))
        }.fill(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
