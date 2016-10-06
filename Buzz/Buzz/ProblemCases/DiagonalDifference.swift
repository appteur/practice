//
//  DiagonalDifference.swift
//  Buzz
//
//  Created by Seth on 10/3/16.
//  Copyright © 2016 Arnott Industries, Inc. All rights reserved.
//

import Foundation

class DiagonalDifference
{
    
    var n = 3
    var dimArray:[[Int]] = []
    var strings = [
        "11 2 4",
        "4 5 6",
        "10 8 -12"
    ]
    
    
    class func runTest()
    {
        let diagDif = DiagonalDifference()
        diagDif.checkDifference()
        
        print(diagDif.dimArray)
    }
    
    
    func checkDifference()
    {
        var firstDiag = 0
        var secondDiag = 0
        var absDiff = 0
        
        for string in strings
        {
            dimArray.append(string.characters.split(separator: " ").map{Int(String($0))!})
        }
        
        
        
        for row in 0..<dimArray.count
        {
            for column in 0..<dimArray.count
            {
                if row == column
                {
                    firstDiag+=dimArray[row][column]
                }
                if row+column == n-1
                {
                    secondDiag+=dimArray[row][column]
                }
            }
        }
        absDiff = abs(firstDiag - secondDiag)
        print(absDiff)
    }
    
}

