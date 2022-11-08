//
//  BackgroundView.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 07/11/22.
//

import SwiftUI

struct BackgroundView: View {
    @State var isanimated = false
    var body: some View {
        ZStack {
            
            Circle()
                .fill(.red)
                .blur(radius: isanimated ? 30 : 100)
                .offset(x: isanimated ? -50 : -130, y: isanimated ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 10).repeatForever()){
                        isanimated.toggle()
                    }
                }
            
            Circle().fill(.purple)
                .blur(radius: isanimated ? 30 : 100)
                .offset(x: isanimated ? 100 : 130, y: isanimated ? 200 : 100)
            VStack {
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.background(LinearGradient(colors: [Color("bgColorBlue"), Color("bgColorDarkBlue")], startPoint: .top, endPoint: .bottom))
        
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
