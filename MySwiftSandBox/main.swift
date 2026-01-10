//
//  main.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 18-01-2024.
//

import Foundation
// let rcpaMax = (Int(1 << 32) - 6) / 10 //429496729
//
//let cppWrapper = MCW()
//let result = cppWrapper.add(withA: 10, b: 5)
//print("Sum: \(result)")
//
//cppWrapper.greet(withName: "Brogrammer") // Output: Hello, John!
//var value = 100
//switch (value) {
//case 10:
//    print(10)
//case value where value%10 == 0:
//    print("Mod function")
//case 100:
//    print(100)
//    fallthrough
//
//default:
//    print("Default")
//
//    
//}

func printStrings(array arr: String...) {
    arr.forEach({str in
        print(str)
    })
}

func printText(text str: String, lambda arrow: (String) -> Void) {
    arrow(str)
}

func printTextAutoC(function autoc: @autoclosure () -> String) {
    print("Autoclosure: \(autoc())")
}

enum Inters: String {
    case something, somewhere, somehow
}

let inter: Inters = Inters(rawValue: "somehing") ?? .somehow

print(inter.rawValue)

struct InterInt {
    var inter: Int {
        willSet {
            print("Will set invoked: \(newValue)")
        }
        didSet {
            print("Did set invoked: \(oldValue)")
        }
    }
}

var strcint = InterInt(inter: 40)

strcint.inter = 700

print(strcint.inter)
