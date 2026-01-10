//
// UnicodeHelper.swift
// MySwiftSandBox
//
    
import Foundation

class UnicodeHelper {
    
    /// Returns the Unicode scalars of a character as Swift literals
    static func scalars(of character: Character) -> [UInt32] {
        return character.unicodeScalars.map { $0.value }
    }
    
    /// Creates a Character from one or more Unicode scalars
    static func character(from scalars: [UInt32]) -> Character? {
        let string = scalars.compactMap { UnicodeScalar($0) }.map { String($0) }.joined()
        return string.isEmpty ? nil : Character(string)
    }
    
    /// Convenience: single scalar to Character
    static func character(from scalar: UInt32) -> Character? {
        guard let unicode = UnicodeScalar(scalar) else { return nil }
        return Character(String(unicode))
    }
}

