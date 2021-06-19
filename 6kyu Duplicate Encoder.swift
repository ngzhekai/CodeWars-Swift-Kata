/*
--> Instructions <--
The goal of this exercise is to convert a string to a new string 
where each character in the new string is "(" if that character appears only once in the original string, 
or ")" if that character appears more than once in the original string. 
Ignore capitalization when determining if a character is a duplicate.

Examples -->
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 
*/

// --> My solution
func duplicateEncode(_ word: String) -> String {
  let text = word.lowercased()
  let set = NSCountedSet(array: Array(text))
  return text.map { set.count(for: $0) > 1 ? ")" : "("}.joined()
}


// --> Best Solution
func duplicateEncode(_ word: String) -> String {
    var dict = [Character: Int](), word = word.lowercased()
    for letter in word { dict[letter, default: 0] += 1 }
    return word.map { dict[$0]! > 1 ? ")" : "(" }.joined()
}
