//
//  GraphicsView.swift
//  WorkingDrawings
//
//  Created by Javier Fernández on 27/04/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct PieShapeView: View {
    var body: some View {
        VStack {
            Text("Pie Shape")
                .font(.largeTitle)
                .fontWeight(.heavy)
            ZStack{
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: CGPoint(x: 180, y: 180),
                                radius: 150,
                                startAngle: Angle(degrees: 0),
                                endAngle: Angle(degrees: 200),
                                clockwise: true)
                }.fill(Color.red)
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: CGPoint(x: 180, y: 180),
                                radius: 150,
                                startAngle: Angle(degrees: 200),
                                endAngle: Angle(degrees: 80),
                                clockwise: true)
                }.fill(Color.yellow)
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: CGPoint(x: 180, y: 180),
                                radius: 150,
                                startAngle: Angle(degrees: 80),
                                endAngle: Angle(degrees: 0),
                                clockwise: true)
                }.fill(Color.orange)
                .offset(x: 5, y: 5)
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: CGPoint(x: 180, y: 180),
                                radius: 150,
                                startAngle: Angle(degrees: 80),
                                endAngle: Angle(degrees: 0),
                                clockwise: true)
                    path.closeSubpath()
                }.stroke(Color.black, lineWidth: 5)
                .offset(x: 6, y: 6)
                .overlay(
                    Text("24%")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .offset(x: 50, y: -150)
                )
            }
        }
    }
}

struct GraphicsView_Previews: PreviewProvider {
    static var previews: some View {
        PieShapeView()
    }
}
