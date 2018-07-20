//
//  Product.swift
//  Shopping2
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Product : IDisplay {
    func displayData() -> String{
        var returnData = ""
        
        returnData += "\n Product ID : \(self.productID ?? 0)"
        returnData += "\n Product Name : \(self.productName ?? "")"
        returnData += "\n Manufacturer : \(self.manufacturer ?? "")"
        returnData += "\n UnitPrice : \(self.unitPrice ?? 0.0)"
        returnData += "\n Category : \(self.category ?? ProductCategory.None)"
        
        return returnData
    }
    
    
    var productID : Int?
    var productName : String?
    var manufacturer : String?
    var unitPrice : Double?
    var category : ProductCategory?
    
    var ProductID : Int? {
        get{ return self.productID }
        set{ self.productID = newValue}
    }
    var ProductName : String? {
        get{ return self.productName }
        set{ self.productName = newValue}
    }
    var Manufacturer : String? {
        get{ return self.manufacturer }
        set{ self.manufacturer = newValue}
    }
    var UnitPrice : Double? {
        get{ return self.unitPrice }
        set{ self.unitPrice = newValue}
    }
    
    var Category : ProductCategory? {
        get{ return self.category}
        set{ self.category = newValue}
    }
    init(){
        self.productID = 0
        self.productName = ""
        self.manufacturer = ""
        self.unitPrice = 0.0
        self.category = ProductCategory.None
    }
        init(productID : Int, productName: String, manufacturer: String, unitPrice: Double,category: ProductCategory){
        self.productID = productID
        self.productName = productName
        self.manufacturer = manufacturer
        self.unitPrice = unitPrice
        self.category = category
        
    }
    func newProduct(){
        print("Enter the Product ID: ")
        self.productID = (Int)(readLine()!)
        print("Enter the Product Name: ")
        self.productName = readLine()
        print("Enter the manufacturer: ")
        self.manufacturer = readLine()
        print("Please choose the following product categories:")
        for category in ProductCategory.allCases {
            print("Enter \(category.rawValue) for \(category)")
        }
        let choice = (Int)(readLine()!) ?? 5
        self.category = ProductCategory(rawValue: choice)
        
        print("Enter the Unit Price: ")
        self.unitPrice = (Double)(readLine()!)
        
    }
    
    
}
