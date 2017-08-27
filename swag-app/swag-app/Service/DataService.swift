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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "9.99", imageName: "hat01.png"),
        Product(title: "Logo Hat Black", price: "14.00", imageName: "hat02.png"),
        Product(title: "White Hat", price: "22.00", imageName: "hat03.png"),
        Product(title: "Not another hat", price: "100.00", imageName: "hat04.png")
        
    ]
    
    private let hoodies = [
        Product(title: "Hoodie One", price: "99.99", imageName: "hoodie01.png"),
        Product(title: "Hoodie Two", price: "99.99", imageName: "hoodie2.png"),
        Product(title: "Hoodie Three", price: "99.99", imageName: "hoodie03.png"),
        Product(title: "Hoodie Four", price: "99.99", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt One", price: "18.00", imageName: "short01.png"),
        Product(title: "Shirt Two", price: "18.00", imageName: "short02.png"),
        Product(title: "Shirt Three", price: "18.00", imageName: "short03.png"),
        Product(title: "Shirt Four", price: "18.00", imageName: "short04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
       return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "SHIRTS":
           return getShirts()
        case "Hats":
           return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
    
}
