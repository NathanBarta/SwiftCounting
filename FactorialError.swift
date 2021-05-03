//
//  FactorialError.swift
//  SwiftDoubleFactorial
//
//  Created by Nathan Barta on 5/3/21.
//

import Foundation

public enum FactorialError: Error {
    case numberSizeError(String)
    case numberSign(String)
}
