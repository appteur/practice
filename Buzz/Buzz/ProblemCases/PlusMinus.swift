//
//  PlusMinus.swift
//  Buzz
//
//  Created by Seth on 10/3/16.
//  Copyright © 2016 Arnott Industries, Inc. All rights reserved.
//

import Foundation

class PlusMinus
{
    var n = 6
    var arr = [-4,3,-9,0,4,1]
    
    var zeroCount = 0
    var posCount = 0
    var negCount = 0
    
    class func runTest()
    {
        let plus = PlusMinus()
        plus.process()
    }
    
    func process()
    {
        for num in arr
        {
            if num > 0
            {
                posCount += 1
            }
            else if num == 0
            {
                zeroCount += 1
            }
            else
            {
                negCount += 1
            }
        }
        
        print("\(Float(posCount)/Float(n))")
        print("\(Float(negCount)/Float(n))")
        print("\(Float(zeroCount)/Float(n))")
    }
}

