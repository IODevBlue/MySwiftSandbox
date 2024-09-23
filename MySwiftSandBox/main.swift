//
//  main.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 18-01-2024.
//

import Foundation

let cppWrapper = MyCppWrapper()
let result = cppWrapper.add(withA: 3, b: 5)
print("Sum: \(result)") // Output: Sum: 8

cppWrapper.greet(withName: "John") // Output: Hello, John!

