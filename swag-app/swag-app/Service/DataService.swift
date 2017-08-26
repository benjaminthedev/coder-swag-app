//
//  DataService.swift
//  swag-app
//
//  Created by Benjamin on 26/08/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    //Data Source - Simulating external data
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
       return categories
    }
    
    
    
}
