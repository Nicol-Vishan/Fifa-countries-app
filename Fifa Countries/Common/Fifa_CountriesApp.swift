//
//  Fifa_CountriesApp.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 04/11/22.
//

import SwiftUI

@main
struct Fifa_CountriesApp: App {
    @Environment(\.colorScheme) var colorScheme
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainPage()
                    .navigationbarColor(backgroundColor: Color("bgColorBlue"), titleColor: Color(.white))
                    .preferredColorScheme(.light)
            }
        }
    }
}
