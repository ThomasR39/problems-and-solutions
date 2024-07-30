/**
 * ** Is Unique **
 * Implement an algorithm to determine if a string has all unique characters.
 * What if you cannot use additional data structures?
*/

import ArgumentParser

@main
struct IsUnique: ParsableCommand {
    
    @Argument(help: "The string to test for all unique characters.")
    var string: String
    
    @Option(name: .shortAndLong, help: "The method for checking uniqueness: 'dict' or 'nested'.")
    var method: String = "dict"
    
    func run() throws {
        let result: Bool
        switch method {
        case "dict":
            result = IsUniqueChecker.isUniqueDictionary(string)
        case "nested":
            result = IsUniqueChecker.isUniqueNestedLoop(string)
        default:
            throw IsUniqueError.invalidMethod(method)
        }
        print(result)
    }
}

struct IsUniqueChecker {
    
    static func isUniqueDictionary(_ string : String) -> Bool {
        guard !string.isEmpty else {
            return true
        }
        
        var characterCount: [Character : Int] = [:]
        
        for char in string {
            characterCount[char] = (characterCount[char] ?? 0) + 1
        }
        
        for count in characterCount.values {
            if count > 1 { return false }
        }
        
        return true
    }
    
    static func isUniqueNestedLoop(_ string: String) -> Bool {
        guard !string.isEmpty else {
            return true
        }
        
        let characters = Array(string)
        
        for i in 0..<characters.count {
            for j in i+1..<characters.count {
                if characters[i] == characters[j] {
                    return false
                }
            }
        }
        
        return true
    }
}

extension IsUnique {
    
    enum IsUniqueError: Error, CustomStringConvertible {
        case invalidMethod(String)
        
        var description: String {
            switch self {
            case .invalidMethod(let method):
                return "Invalid method '\(method)'. Choose 'dict' or 'nested'."
            }
        }
    }
}
