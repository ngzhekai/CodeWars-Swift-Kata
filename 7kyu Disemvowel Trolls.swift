/* 
      --> Instruction <--
  Trolls are attacking your comment section!

  A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

  Your task is to write a function that takes a string and return a new string with all vowels removed.

  For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

  Note: for this kata y isn't considered a vowel.
    --> Instruction <--
*/


// <Best Solution 1>

func disemvowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}


// <Best Solution 2>

func disemvowel(_ s: String) -> String {
  let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  
  return String(s.characters.filter { !vowels.contains($0) })
}


// <My Solution>

func disemvowel(_ s: String) -> String {
  let newstring = s.replacingOccurrences(of: "[aeiouAEIOU]", with: "", options: .regularExpression, range: nil)
  return newstring
}

// using replacingOccurrences(of:with:options:range:) along with String.CompareOptions.regularExpression options
// reference https://stackoverflow.com/questions/28059543/swift-replace-multiple-characters-in-string/35463478
