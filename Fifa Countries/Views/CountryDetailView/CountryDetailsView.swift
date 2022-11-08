//
//  CountryDetailsView.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 08/11/22.
//

import SwiftUI

struct CountryDetailsView: View {
    var country: Country
    var body: some View {
            ZStack {
                BackgroundView()
                VStack{
                    Spacer()
                    CountryDetailHeaderView(country: country)
                    CountryDetailBottom(country: country)
                }
            }.navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct CountryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsView(country: previewCountry)
    }
}
