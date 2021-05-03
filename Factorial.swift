//
//  Factorial.swift
//  SwiftDoubleFactorial
//
//  Created by Nathan Barta on 5/3/21.
//

import Foundation

postfix operator ~!

public postfix func ~! (number: Int) -> Int? {
    do {
        guard number >= 0 else { throw FactorialError.numberSign("Number must be positive") }
        guard number <= 20 else { throw FactorialError.numberSizeError("Number too big (\(number))") }
    }
    catch {
        print(error)
        return nil;
    }
    func recFactorial(_ n: Int) -> Int {
        if(n == 0){
            return 1
        } else {
            return n * recFactorial(n-1)
        }
    }
    return recFactorial(number)
}
