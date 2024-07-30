import Testing
@testable import IsUnique

@Test
func emptyString() {
    let result = IsUniqueChecker.isUniqueDictionary("")
    #expect(result == true)
}

@Test
func oneCharacter() {
    let result = IsUniqueChecker.isUniqueDictionary("a")
    #expect(result == true)
}

@Test
func twoRepeatedCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("aa")
    #expect(result == false)
}

@Test
func twoUniqueCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("ab")
    #expect(result == true)
}

@Test
func threeRepeatedCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("aaa")
    #expect(result == false)
}

@Test
func fourRepeatedCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("aaaa")
    #expect(result == false)
}

@Test
func uniqueAndRepeatedCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("aabbcc")
    #expect(result == false)
}

@Test
func specialCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("!@#$%^&*()")
    #expect(result == true)
}

@Test
func mixedCaseCharacters() {
    let result = IsUniqueChecker.isUniqueDictionary("aA")
    #expect(result == true)
}

@Test
func longUniqueString() {
    let result = IsUniqueChecker.isUniqueDictionary("abcdefghijklmnopqrstuvwxyz")
    #expect(result == true)
}

@Test
func longNonUniqueString() {
    let result = IsUniqueChecker.isUniqueDictionary(String(repeating: "a", count: 1000))
    #expect(result == false)
}
