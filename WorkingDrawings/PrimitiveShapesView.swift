//
//  BasicPrimitive.swift
//  WorkingDrawings
//
//  Created by Javier Fernández on 27/04/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct PrimitiveShapesView: View {
    var body: some View {
        VStack {
            Text("Primitive Shapes")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Circle()
                .frame(width: 120,  height: 120)
                .foregroundColor(.blue)
            Rectangle()
                .frame(width: 120,  height: 120)
                .foregroundColor(.green)
            Ellipse()
                .frame(width: 120,  height: 120)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 120,  height: 120)
                .foregroundColor(.yellow)
        }
    }
}

struct BasicPrimitive_Previews: PreviewProvider {
    static var previews: some View {
        PrimitiveShapesView()
    }
}
