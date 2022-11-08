//
//  CountryDetailBottom.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 08/11/22.
//

import SwiftUI

struct CountryDetailBottom: View {
    var country: Country
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("More Details")
                    .font(.title3)
                    .bold()
            }
            HStack(alignment: .center){
                ComponentView(image: "dollarsign.circle", title: "Currency", value: (country.currencies?.bbd?.name) ?? "")
                ComponentView(image: "a.circle.fill", title: "Language", value: (country.languages?.eng) ?? "")
            }
            
            HStack(alignment: .center){
                ComponentView(image: "globe.americas.fill", title: "Region", value: country.region)
                ComponentView(image: "network", title: "Continet", value: country.continents.first!)
            }
            HStack(alignment: .center){
                ComponentView(image: "person.2", title: "Population", value: country.population.formatted())
                    .padding(.bottom, 20)
                ComponentView(image: "timer", title: "Time zone", value: country.timezones.first!)
                    .padding(.bottom, 20)
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color(.white.withAlphaComponent(0.5)))
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct CountryDetailBottom_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailBottom(country: previewCountry)
    }
}
