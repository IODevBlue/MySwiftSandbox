//
//  AlphabetGuessingGame.swift
//  MySwiftSandBox
//
//  Created by iodevblue on 18-01-2024.
//

import Foundation

class AlphabetGuessingGame {
	private var noOfTrials = 0

	func exec() {
		let rand = Int.random(in: 1...26)
		var d: Character = "A"
		var uint = d.asciiValue!
		for _ in 1...rand {
			uint += 1
		}
		d = Character(String(UnicodeScalar(uint)))
		
		print("The Answer is: \(d)")
		print("-----------------------------")
		print("Random Alphabet Guessing Game")
		print("-----------------------------")
		print("I have picked a random Alphabet between 'A-Z, Can you guess that Alphabet?")
		print(); print()
		print("***Your Answer should be in Uppercase***")
		print(); print()
		print("\t\tGo!!!"); print()
		
	loop: repeat {
			print("It is: ", terminator: "")
			let s = readLine()
			
			if s == nil {
				print("Invalid character. Try again!")
			} else {
				if s!.count > 1 {
					print("That is too long!, Guess just an Alphabet! Try again.")
				} else {
					let sc = Character(s!)
					if (sc.isLowercase) {
						print("Answer must be an Upper case Alphabet! Try again.")
					} else if sc != d {
						print("Wrong Answer! Try again.")
						noOfTrials += 1
					} else if sc == d {
						print("-----------------------------")
						print("Yay, Correct!")
						print("-----------------------------")
						print("Your Number of trials: ", noOfTrials)
						break loop
						
					}
				}
			}
			
		} while true
		
		
	}
}
