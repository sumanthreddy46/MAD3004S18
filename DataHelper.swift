//
//  DataHelper.swift
//  Shopping2
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class DataHelper {
    var ProductList = [Int : Product]()
    
    
    
    init(){
        self.loadProducts()
    }
    
    func loadProducts(){
        let epson = Product(productID: 101, productName: "Projector", manufacturer: "Epson", unitPrice: 1000.1, category: ProductCategory.Appliances)
        ProductList[epson.ProductID!] = epson
        
        let handcream = Product(productID: 101, productName: "Handcream", manufacturer: "Glysomed", unitPrice: 12.23, category: ProductCategory.Health)
        ProductList[handcream.ProductID!] = handcream
        
        let flask = Product(productID: 102, productName: "Flask", manufacturer: "Contigo", unitPrice: 20, category: ProductCategory.Appliances)
        ProductList[flask.ProductID!] = flask
        
        let zelda = Product(productID: 103, productName: "The Legend of Zelda", manufacturer: "Nintendo", unitPrice: 27.97, category: ProductCategory.Books)
        ProductList[zelda.ProductID!] = zelda
        
        let sapiens = Product(productID: 104, productName: "Sapiens", manufacturer: "Yuval Noah Harari", unitPrice: 11.89, category: ProductCategory.Books)
        ProductList[sapiens.ProductID!] = sapiens
        
        let socks = Product(productID: 105, productName: "Puma Men's 6 pack Low Cut Socks", manufacturer: "Puma", unitPrice: 23.40, category: ProductCategory.Clothing)
        ProductList[socks.ProductID!] = socks
        
        let dress = Product(productID: 106, productName: "Women's Vintage Floral Cocktail Dress", manufacturer: "OWIN", unitPrice: 45, category: ProductCategory.Clothing)
        ProductList[dress.ProductID!] = dress
    }
    
    func displayProducts(){
        for(_,value) in ProductList.sorted(by: {$0.key < $1.key}){
            print("\(value.displayData())")
        }
    }
    
}










