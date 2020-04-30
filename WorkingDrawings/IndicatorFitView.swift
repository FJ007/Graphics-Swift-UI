//
//  IndicatorFitView.swift
//  WorkingDrawings
//
//  Created by Javier Fernández on 30/04/2020.
//  Copyright © 2020 Silversun Studio. All rights reserved.
//

import SwiftUI

struct IndicatorFitView: View {
    
    private let colorBlueGradient = LinearGradient(gradient:
                                  Gradient(colors: [Color("ColorBlue"), Color("ColorBlue2")]),
                                       startPoint: .trailing,
                                       endPoint: .leading)
    var body: some View {
        VStack {
            Text("Indicator Progress")
                .font(.largeTitle)
                .bold()
            Spacer()
            ZStack{
                Circle()
                    .stroke(Color.gray, lineWidth: 10)
                    .opacity(0.2)
                    .frame(width: 250, height: 250)
                Circle()
                    .trim(from: 0, to: 0.65)
                    .stroke(colorBlueGradient, lineWidth: 20)
                    .frame(width: 250, height: 250)
                .overlay(
                    VStack{
                        Image(systemName: "bed.double")
                            .font(.system(size: 50))
                            .foregroundColor(.pink)
                        Text("7 hours")
                            .font(.system(size: 50, weight: .thin, design: .rounded))
                            .foregroundColor(.black)
                    }
                )
            }
            Spacer()
        }
    }
}

struct IndicatorFitView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorFitView()
    }
}

