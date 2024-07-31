import Testing
@testable import CheckPermutation

@Test
func emptyStrings() {
    let result = CheckPermutationChecker.checkPermutation("", "")
    #expect(result == true)
}

@Test
func emptyStringAndOneCharacter() {
    let result = CheckPermutationChecker.checkPermutation("", "a")
    #expect(result == false)
}

@Test
func equalCharacters() {
    let result = CheckPermutationChecker.checkPermutation("a", "a")
    #expect(result == true)
}

@Test
func equalCharactersUpperAndLowerCase() {
    let result = CheckPermutationChecker.checkPermutation("A", "a")
    #expect(result == false)
}

@Test
func reversedStrings() {
    let string = "abcdefg"
    let result = CheckPermutationChecker.checkPermutation(string, String(string.reversed()))
    #expect(result == true)
}

@Test
func differentLengths() {
    let result = CheckPermutationChecker.checkPermutation("abcd", "abcde")
    #expect(result == false)
}

@Test
func permutationWithSpaces() {
    let result = CheckPermutationChecker.checkPermutation("a b c", " c b a")
    #expect(result == true)
}

@Test
func permutationWithSpecialCharacters() {
    let result = CheckPermutationChecker.checkPermutation("a!@#", "#@!a")
    #expect(result == true)
}

@Test
func permutationWithNumbers() {
    let result = CheckPermutationChecker.checkPermutation("1234", "4321")
    #expect(result == true)
}

@Test
func permutationWithMixedCase() {
    let result = CheckPermutationChecker.checkPermutation("aBcDe", "DeBcA")
    #expect(result == false)
}

@Test
func permutationWithSameCharactersDifferentOrder() {
    let result = CheckPermutationChecker.checkPermutation("aabb", "abab")
    #expect(result == true)
}

@Test
func veryLongStrings() {
    let longString1 = String(repeating: "a", count: 1000)
    let longString2 = String(repeating: "a", count: 1000)
    let result = CheckPermutationChecker.checkPermutation(longString1, longString2)
    #expect(result == true)
}

@Test
func largeDifferentStrings() {
    let longString1 = String(repeating: "a", count: 1000) + "b"
    let longString2 = String(repeating: "a", count: 1000) + "c"
    let result = CheckPermutationChecker.checkPermutation(longString1, longString2)
    #expect(result == false)
}
