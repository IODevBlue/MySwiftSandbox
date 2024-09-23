//
//  AverageNumberCalculator.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 19-01-2024.
//

import Foundation

class AverageNumberCalculator {
	
	func exec() {
		print("--------------------------------")
		print("***Average Number Calculator***")
		print("--------------------------------")
		print("Type in the numbers you want to calculate an average of: "); print()
		print("Type in 'Yes' when done.")
		var i = 0; var sum = 0.0
		var falseInput: String
		
	loop:
		while true {
			var input: Int?
			print("Number \(i+1): ", terminator: "")
			falseInput = readLine() ?? ""
			input = Int(falseInput)
			if(input != nil) {
				i += 1
				sum += Double(input!)
				continue
			} else {
				if(falseInput.lowercased() == "yes") {
					break loop
				}
				print("That is not a number! Please try again.")
			}
		}
		print("The Average of these \(i) numbers is = ", sum/2)
	}
}
