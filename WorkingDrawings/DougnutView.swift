//
//  DougnutView.swift
//  WorkingDrawings
//
//  Created by Javier Fernández on 30/04/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct DougnutView: View {
    var body: some View {
        VStack {
            Text("Dougnut Shape")
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .padding(30)
            ZStack{
                Circle()
                    .trim(from: 0, to: 0.3)
                    .stroke(Color.red,
                            style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                Circle()
                    .trim(from: 0.3, to: 0.5)
                    .stroke(Color.blue,
                            style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                Circle()
                    .trim(from: 0.5, to: 0.7)
                    .stroke(Color.yellow,
                            style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                Circle()
                    .trim(from: 0.7, to: 1)
                    .stroke(Color.green,
                            style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                .overlay(
                    Text("25%")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.body)
                        .offset(x: 0, y: -110)
                )
                
            }
            
        }.frame(width: 350, height: 350)
        
    }
}


struct DougnutView_Previews: PreviewProvider {
    static var previews: some View {
        DougnutView()
    }
}
