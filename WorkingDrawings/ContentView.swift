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
        VStack {
            Text("Path Shapes")
                .font(.largeTitle)
                .bold()
                .underline()
            ZStack{
                Path() { path in // Square
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
                }.fill(Color.green)
                Path() { path in // Square Stroke
                    path.move(to: CGPoint(x: 40, y: 40))
                    path.addLine(to: CGPoint(x: 220, y: 40))
                    path.addLine(to: CGPoint(x: 220, y: 140))
                    path.addLine(to: CGPoint(x: 40, y: 140))
                    path.closeSubpath()
                }.stroke(Color.white, lineWidth: 5)
            }
            ZStack{
                Path() { path in // Triangle
                    path.move(to: CGPoint(x: 50, y: 30))
                    path.addLine(to: CGPoint(x: 130, y: -90))
                    path.addLine(to: CGPoint(x: 210, y: 30))
                }.fill(Color.black)
                Path() { path in // Half Circle + Square
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 30))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 30),
                                      control: CGPoint(x: 130, y: -100))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
                }.fill(Color.orange)
                Path() { path in // Frame
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 30))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 30),
                                      control: CGPoint(x: 130, y: -100))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
                    path.closeSubpath()
                }.stroke(Color.black, lineWidth: 5)
            }
            ZStack{
                Path() { path in // Use CGRect
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 30))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 30),
                                      control: CGPoint(x: 130, y: -50))
                    path.addRect(CGRect(x: 30, y: 30, width: 200, height: 120))
                }.fill(Color.blue)
                Path() { path in
                    path.move(to: CGPoint(x: 30, y: 30))
                    path.addLine(to: CGPoint(x: 50, y: 30))
                    path.addQuadCurve(to: CGPoint(x: 210, y: 30),
                                        control: CGPoint(x: 130, y: -50))
                    path.addLine(to: CGPoint(x: 230, y: 30))
                    path.addLine(to: CGPoint(x: 230, y: 150))
                    path.addLine(to: CGPoint(x: 30, y: 150))
                    path.closeSubpath()
                }.stroke(Color.black, lineWidth: 10)
                Text("Ad here!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 80)
                    .offset(x: -75, y: -32)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

