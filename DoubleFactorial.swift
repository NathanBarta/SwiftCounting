//
//  DoubleFactorial.swift
//  SwiftDoubleFactorial
//
//  Created by Nathan Barta on 5/3/21.
//

import Foundation

postfix operator ~!!

public postfix func ~!! (number: Int) -> Int?  {
    do {
        guard number >= 0 else { throw FactorialError.numberSign("Number must be positive") }
        guard number <= 33 else { throw FactorialError.numberSizeError("Number too big (\(number))") }
    }
    catch {
        print(error)
        return nil;
    }
    func recDoubleFactorial(_ n: Int) -> Int {
        if(n == 0 || n < 0){
            return 1
        } else {
            return n * recDoubleFactorial(n-2)
        }
    }
    return recDoubleFactorial(number)
}
