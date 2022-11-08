//
//  Extentions.swift
//  Fifa Countries
//
//  Created by Nicol Warnakulasooriya on 08/11/22.
//

import Foundation
import SwiftUI

extension View {
    func navigationbarColor(backgroundColor: Color, titleColor: Color) -> some View {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor(backgroundColor)
        
        let titleColor = UIColor(titleColor)
        appearance.largeTitleTextAttributes = [.foregroundColor: titleColor]
        appearance.titleTextAttributes = [.foregroundColor: titleColor]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        
       
        
        return self
    }
    
    func setupSearchbarAppearance() -> some View {
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self ]).backgroundColor = .white
        
        
        return self
    }
}
