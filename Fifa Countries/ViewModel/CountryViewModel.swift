//
//  CountryViewModel.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 07/11/22.
//

import Foundation

protocol CountryModelProtocol {
    func getCountryData() async throws
}

class CountryViewModel: ObservableObject, CountryModelProtocol {
    
   @Published var countryList = [Country]()
    var error: Error?
   
    func getCountryData() async {
        let url = "https://restcountries.com/v3.1/all"
        let networkManager = NetworkManager()
       
        let result = try? await networkManager.getCountryData(url: url)
        switch result {
        case .success(let countries):
            self.countryList = countries
        case .failure:
            self.error = APIErrors.WrongURL
        case .none:
            self.error = APIErrors.WrongURL
        }
    }
    
}
