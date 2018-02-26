//
//  wage.swift
//  windowShopperCalculator
//
//  Created by Saivishal Gummadi on 2/26/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import Foundation
class wage {
    class func getWage(forWage wage:Double, forprice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
