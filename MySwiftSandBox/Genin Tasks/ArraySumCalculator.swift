//
//  ArraySumCalculator.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 18-01-2024.
//

import Foundation

class ArraySumCalculator {
	
	func exec() {
		print("---------------------------------------")
		print("\tArray Sum Calculator")
		print("---------------------------------------")
		
	loop:
		repeat {
			print("\nInput the size of the array: ", terminator:"")
			let a: Int? = Int(readLine() ?? "")
			
			if a != nil {
				var b = Array<Int>(repeating: 0, count: a!)
				var i = 0, j = 0;
				var notDone = true
				repeat {
					if i < a! {
						print("\(j): ", terminator: "")
						b[i] = Int(readLine() ?? "0")!
						i+=1; j+=1
					} else {
						notDone = false
					}
				} while notDone
				arrayAdd(&b, a!)
				break loop
			} else {
				print("\nThat is not an Integer! Try again.")
			}
		} while(true)
	}
	
	private func arrayAdd(_ a: inout [Int], _ size: Int) {
		var c = 0
		var f = ""
		for i in 0..<size {
			c += a[i]
			if i != size-1 {
				f.append("\(a[i]), ")
			} else {
				f.append("\(a[i])")
			}
		}
		print("\n__________________________________")
		print("\nThe sum of the values in the array: ", f, " is = ", c)
		print("__________________________________\n\n")
	}
}
