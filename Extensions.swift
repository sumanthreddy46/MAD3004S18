//
//  Extensions.swift
//  Day7
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

extension Double{
    var asCurrency: String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(for: self)!
    }
}


extension Int{
    //extension for property
    var isPrime : Bool{
        guard self > 1 else{
            return false
        }
        for i in 2..<self{
            if self % i == 0{
                return false
            }
        }
        return true
    }
    
    //extension for function
    func wish(task: () -> Void){
        for _ in 1...self{
            task()
        }
    }
    
    //extension for subscript
    //subscript to get the digit at specified index from Right
    //eg. 123456[2] will return 4
    subscript (digitIndex: Int) -> Int{
        var decimalBase = 1
        
        for _ in 0..<digitIndex{
            decimalBase *= 10
        }
        return (self/decimalBase) % 10
    }
}
