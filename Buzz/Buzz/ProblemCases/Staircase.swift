//
//  Staircase.swift
//  Buzz
//
//  Created by Seth on 10/3/16.
//  Copyright © 2016 Arnott Industries, Inc. All rights reserved.
//

import Foundation

class Staircase
{
    var count = 6
    
    class func runTest()
    {
        let stair = Staircase()
        stair.process()
    }
    
    func process()
    {
        for i in 1...count
        {
            let spaces = count - i
            print("Spaces \(spaces)")
            var step = ""
            for space in 0..<count
            {
                if space < spaces
                {
                    step+=" "
                }
                else
                {
                    step+="#"
                }
            }
            print(step)
        }
    }
    
}
