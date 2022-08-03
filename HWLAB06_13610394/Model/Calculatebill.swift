//
//  Calculatebill.swift
//  HWLAB06_13610394
//
//  Created by Worawiboon on 24/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import Foundation

struct Calculatebill {
    var result: Float = 0.0
    func getBillValue() -> String {
        let resultBill = String(format: "%.2f", result)
        return resultBill
    
    }
    mutating func Calbill(bill:Float, tip:Float, person:Float){
        
        result = bill + (bill*(tip/100))
        result = result/person
    }
}
