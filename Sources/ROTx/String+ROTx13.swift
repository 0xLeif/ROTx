//
//  String+ROTx13.swift
//  
//
//  Created by Zach Eriksen on 1/13/21.
//

public extension String {
    func shifted(by offset: Int) -> String {
        guard !isEmpty else {
            return self
        }
        
        let shouldDropFirstValue = offset >= 0
        var shiftedValue = self
        
        for _ in (0 ..< abs(offset)) {
            if shouldDropFirstValue {
                if let dropCharacter = shiftedValue.first {
                    shiftedValue = "\(shiftedValue.dropFirst())\(dropCharacter)"
                }
            } else {
                if let dropCharacter = shiftedValue.last {
                    shiftedValue = "\(dropCharacter)\(shiftedValue.dropLast())"
                }
            }
        }
        
        return shiftedValue
    }
    
    func rot13() -> String {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        let alphabetROT13 = "nopqrstuvwxyzabcdefghijklm"
        
        return self
            .map { character -> String in
                guard let lowercasedCharacter = character.lowercased().first,
                      let index = alphabet.firstIndex(of: lowercasedCharacter) else {
                    return String(character)
                }
                
                if character.isUppercase {
                    return alphabetROT13[index].uppercased()
                }
                
                return String(alphabetROT13[index])
            }
            .joined()
    }
}
