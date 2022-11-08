//
//  MainPage.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 04/11/22.
//

import SwiftUI

struct MainPage: View {
    
    @StateObject var countryModel = CountryViewModel()
    @State var searchText = ""

    var searchResult: [Country] {
        if searchText.isEmpty {
            return countryModel.countryList
        } else {
            return countryModel.countryList.filter { $0.region.contains(searchText)
            }
        }
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            List {
                ForEach(searchResult.indices, id: \.self) { index in
                    if let country = searchResult[index] {
                        NavigationLink(destination: CountryDetailsView(country: country)) {
                            CountryCellView(country: country)
                        }
                    }
                }.listRowBackground(Color(.white.withAlphaComponent(0.2)))
                    .listRowSeparatorTint(.black)
            }.searchable(text: $searchText)
            .setupSearchbarAppearance()
            .scrollContentBackground(.hidden)
            .navigationTitle("Countries")
            .onAppear {
                Task {
                    await countryModel.getCountryData()
                }
            }
        }
    }
}
struct Badge: View {
    var text: String
    var imageName: String
    
    var body: some View{
        HStack{
            Image(systemName: imageName)
                .frame(width: 30, height: 30)
            Text(text)
                .font(.system(size: 12))
        }
    }
    
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
