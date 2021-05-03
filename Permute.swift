//
//  Permute.swift
//  SwiftDoubleFactorial
//
//  Created by Nathan Barta on 5/3/21.
//

import Foundation

enum PermuteError: String, Error {
    case kLargerThanN = "k (right side) is larger than n"
    case signError = "n and/or k is negative"
    case computeError = "n and/or k is nil"
}

infix operator ~/: MultiplicationPrecedence

///Permute (nPk): An ordered arangment of k items from n set.
///- Precondition: n and k must be positive integers. k must be less than or equal to n.
///- Parameter lhs: n
///- Parameter rhs: k
public func ~/ (lhs: Int, rhs: Int) -> Int {
    if rhs < 0 || lhs < 0 {
        fatalError(PermuteError.signError.rawValue)
    }
    if rhs > lhs {
        fatalError(PermuteError.kLargerThanN.rawValue)
    }
    
    let n = (lhs~!)
    let pk = ((lhs-rhs)~!)
    
    if n == nil || pk == nil {
        fatalError(PermuteError.computeError.rawValue)
    }
    
    return n!/pk!
}
