//
//  TempEmp.swift
//  Day7
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class TempEmp: Employee,INetPay{
    var netPay: Double?{
        get{
            if self.hours! > 20{
                return self.basicPay! - 1500
            }else{
                return self.basicPay
            }
        }
    }
    var hours : Int?
    
    override init(){
        self.hours = 0
        super.init()
    }
    required init(empID: Int, empName: String, basicPay: Double, holiday: Int) {
        self.hours = holiday
        super.init(empID: empID, empName: empName, basicPay: basicPay)
    }
    
    override func display(){
        super.display()
        print("Holiday hours : \(self.hours ?? 0)")
        print("Net Pay : \(self.netPay?.asCurrency ?? self.basicPay?.asCurrency ?? 0.0.asCurrency)")
    }
    
}
