/**
 * ** Check Permutation **
 * Given two strings, write a method to decide if one is a permutation of the other.
 * A Permutation of a string is another string that contains same characters, only the order of characters can be different.
*/

import ArgumentParser

@main
struct CheckPermutation: ParsableCommand {
    
    @Argument(help: "The first string.")
    var stringOne: String
    
    @Argument(help: "The second string.")
    var stringTwo: String
    
    func run() {
        print(CheckPermutationChecker.checkPermutation(stringOne, stringTwo))
    }
}

struct CheckPermutationChecker {
    
    static func checkPermutation(_ stringOne: String, _ stringTwo: String) -> Bool {
        let stringOne = stringOne.trimmingCharacters(in: .whitespaces)
        let stringTwo = stringTwo.trimmingCharacters(in: .whitespaces)
        
        guard stringOne.count == stringTwo.count else { return false }
        
        var stringOneCounter: [Character : Int] = [:]
        var stringTwoCounter: [Character : Int] = [:]
        
        for char in stringOne {
            stringOneCounter[char] = (stringOneCounter[char] ?? 0) + 1
        }
        
        for char in stringTwo {
            stringTwoCounter[char] = (stringTwoCounter[char] ?? 0) + 1
        }
        
        return stringOneCounter == stringTwoCounter
    }
}
