//
//  ComponentView.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 08/11/22.
//

import SwiftUI

struct ComponentView: View {
    var image: String
    var title: String
    var value: String
    
    var body: some View {
        HStack(spacing: 8){
            Image(systemName: image)
                .resizable()
                .foregroundColor(.black)
                .frame(width: 20,height: 20)
                .padding()
                .background(Color(hue: 0.694, saturation: 0.037, brightness: 0.83, opacity: 0.987))
                .clipShape(Circle())
                .padding(.all, 8)
            VStack(alignment: .center) {
                Text(title)
                    .font(.subheadline)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(value)
                    .font(.system(size: 14))
                    .bold()
                    .lineLimit(2)
                    .minimumScaleFactor(0.6)
            }
            Spacer()
        }
    }
}

struct ComponentView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentView(image: "mappin.circle.fill", title: "Capital", value: "Colombo")
    }
}
