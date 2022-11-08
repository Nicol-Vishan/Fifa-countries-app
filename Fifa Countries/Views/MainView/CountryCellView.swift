//
//  CountryCellView.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 07/11/22.
//

import SwiftUI

struct CountryCellView: View {
    var country: Country
    
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            AsyncImage(url: URL(string: "\(country.flags.png ?? "sl")")) { image in
                image
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80, alignment: .leading)
                    .overlay {
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color(.white),lineWidth: 2)
                    }
            } placeholder: {
                ProgressView()
            }
 
            VStack(alignment: .leading, spacing: 5.0){
                Spacer()
                HStack(alignment: .lastTextBaseline){
                    Text("\(country.name.common)")
                        .font(.system(size: 20))
                        .lineLimit(2, reservesSpace: true)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(country.region)")
                        .font(.caption)
                        .italic()
                        .foregroundColor(.white)
                        .frame(alignment: .trailing)
                }
                
                HStack(alignment: .center){
                    Badge(text: country.capital?.first! ?? "No Capital", imageName: "map.circle")
                        .foregroundColor(.green)
                    Spacer()
                    Badge(text: country.population.formatted(), imageName: "person.3.fill")
                        .foregroundColor(.orange)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
        }.background(Color(.clear))
        .frame(maxWidth: .infinity, maxHeight: 80,alignment: .leading)
    }
}

struct CountryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CountryCellView(country: previewCountry)
    }
}
