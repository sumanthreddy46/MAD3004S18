//
//  Employee.swift
//  Day7
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee{
    var empID : Int?
    var empName : String?
    var basicPay : Double?
    
    
    init(){
        self.empID = 0
        self.empName = ""
        self.basicPay = 0.0
    }
    init(empID: Int, empName: String, basicPay: Double){
        self.empID = empID
        self.empName = empName
        self.basicPay = basicPay
    }
    
    func display(){
        print("Emp ID : \(self.empID ?? 0)")
        print("Emp Name : \(self.empName ?? "Unknowm")")
        print("Basic Pay : \(self.basicPay ?? 0.0)")
        
    }
    
}
