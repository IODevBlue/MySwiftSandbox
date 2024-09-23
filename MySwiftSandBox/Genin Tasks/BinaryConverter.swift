//
//  BinaryConverter.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 19-01-2024.
//

import Foundation

class BinaryConverter {
	
	func exec() {
		
	loop:
		while(true) {
			print("--------------------------------")
			print("input Number to Convert: ")
			print("--------------------------------")
			let b: Int? = Int(readLine() ?? "")
			
			if b != nil {
				let bin = String(b!, radix: 2)
				print("The Binary form of \(b!) is \(bin)"); print()
				print("Do you want to continue? Yes or No?.")
				let response = readLine()
				
				if response != nil {
					if(response!.lowercased() == "yes") {
						print();
						continue
					}
				} else {
					break loop
				}
			} else {
				print("That is not a Number! Please Input a Number")
			}
		}
	}
}
