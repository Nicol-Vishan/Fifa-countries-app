//
//  NetworkManager.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 07/11/22.
//

import Foundation

enum APIErrors: Error {
    case WrongURL
    case DataNotRepresent
    case ErrorWhileLoadingData
    case ErrorResponse
}

class NetworkManager {
    
    func getCountryData(url: String) async throws -> Result<[Country], Error> {
        
        guard let url = URL(string: url) else { return .failure(APIErrors.WrongURL)}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { return .failure(APIErrors.ErrorResponse)}
        
        let decoder = JSONDecoder()
        let jsonData = try decoder.decode([Country].self, from: data)
        
        return .success(jsonData)
    }
    
    
//    func getCountryData(url: String, completion: @escaping ([Country])-> Void) {
//
//        guard let url = URL(string: url) else { fatalError("Wrong URL")}
//        let request = URLRequest(url: url)
//        let session =  URLSession.shared
//        session.dataTask(with: request) { data, response, erorr in
//            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("There was an error while fetching data")}
//
//            do {
//                let decoder = JSONDecoder()
//                let jsonData = try decoder.decode([Country].self, from: data!)
//                completion(jsonData)
//            } catch let jsonError {
//                print(jsonError)
//            }
//
//        }.resume()
//    }
}
