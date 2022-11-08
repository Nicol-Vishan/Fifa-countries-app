//
//  CountryDetailHeaderView.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 08/11/22.
//

import SwiftUI

struct CountryDetailHeaderView: View {
    var country: Country
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .leading){
                HStack(alignment: .center, spacing: 20) {
                    AsyncImage(url: URL(string: country.flags.png!)) { image in
                        image
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 100).stroke(Color(.white), lineWidth: 4)
                            }
                           
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(.leading, 20)
                    VStack(alignment: .leading) {
                        Text(country.name.common)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .lineLimit(2)
                            .minimumScaleFactor(0.7)
                        Text((country.capital?.first)!)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
            .padding(.bottom, 20)
            VStack(alignment: .leading){
                Text("Other Flags")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
            }
            Spacer()
            AsyncImage(url: URL(string: country.coatOfArms.png ?? "")) { image in
                image
                    .resizable()
                    .frame(width: 150, height: 150)
                
            } placeholder: {
                    ProgressView()
            }
            Spacer()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CountryDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailHeaderView(country: previewCountry)
    }
}
