/*  --> Descriptions <--
Your task is to write a function toLeetSpeak that converts a regular english sentence to Leetspeak.

More about LeetSpeak You can read at wiki -> https://en.wikipedia.org/wiki/Leet

Consider only uppercase letters (no lowercase letters, no numbers) and spaces.

For example:

toLeetSpeak("LEET") returns "1337"
In this kata we use a simple LeetSpeak dialect. Use this alphabet:

{
  A : '@',
  B : '8',
  C : '(',
  D : 'D',
  E : '3',
  F : 'F',
  G : '6',
  H : '#',
  I : '!',
  J : 'J',
  K : 'K',
  L : '1',
  M : 'M',
  N : 'N',
  O : '0',
  P : 'P',
  Q : 'Q',
  R : 'R',
  S : '$',
  T : '7',
  U : 'U',
  V : 'V',
  W : 'W',
  X : 'X',
  Y : 'Y',
  Z : '2'
}
*/


// < My Solution >

func toLeetSpeak(_ s : String) -> String {
  var returnString: String = ""
  for letter in s{
    switch letter {
      case "A" : returnString += "@"
      case "B" : returnString += "8"
      case "C" : returnString += "("
      case "D" : returnString += "D"
      case "E" : returnString += "3"
      case "F" : returnString += "F"
      case "G" : returnString += "6"
      case "H" : returnString += "#"
      case "I" : returnString += "!"
      case "J" : returnString += "J"
      case "K" : returnString += "K"
      case "L" : returnString += "1"
      case "M" : returnString += "M"
      case "N" : returnString += "N"
      case "O" : returnString += "0"
      case "P" : returnString += "P"
      case "Q" : returnString += "Q"
      case "R" : returnString += "R"
      case "S" : returnString += "$"
      case "T" : returnString += "7"
      case "U" : returnString += "U"
      case "V" : returnString += "V"
      case "W" : returnString += "W"
      case "X" : returnString += "X"
      case "Y" : returnString += "Y"
      case "Z" : returnString += "2"
      case " " : returnString += " "
      default : break
    }
  }
  return returnString
}



// < Best Solution>

let dict : [Character : Character] =
    [   "A" : "@",
        "B" : "8",
        "C" : "(",
        "E" : "3",
        "G" : "6",
        "H" : "#",
        "I" : "!",
        "L" : "1",
        "O" : "0",
        "S" : "$",
        "T" : "7",
        "Z" : "2",
]

func toLeetSpeak(_ s : String) -> String {
  return String(s.map { dict[$0] ?? $0 })
}
