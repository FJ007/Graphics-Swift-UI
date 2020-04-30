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
                SetupPie(startDegress: 0, endDegress: 200)
                    .fill(Color.red)
                SetupPie(startDegress: 200, endDegress: 80)
                    .fill(Color.yellow)
                SetupPie(startDegress: 80, endDegress: 0)
                    .fill(Color.orange)
                    .offset(x: 5, y: 5)
                SetupPie(startDegress: 80, endDegress: 0)
                    .stroke(Color.black, lineWidth: 5)
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


struct SetupPie: Shape {
    
    var startDegress: Double
    var endDegress: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 180, y: 180))
        path.addArc(center: CGPoint(x: 180, y: 180),
                        radius: 150,
                        startAngle: Angle(degrees: startDegress),
                        endAngle: Angle(degrees: endDegress),
                        clockwise: true)
        path.closeSubpath()
        return path
    }
}


struct GraphicsView_Previews: PreviewProvider {
    static var previews: some View {
        PieShapeView()
    }
}
