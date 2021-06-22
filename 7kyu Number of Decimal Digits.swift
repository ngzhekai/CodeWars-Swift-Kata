/* --> Instuctions <--
Determine the total number of digits in the integer (n>=0) given as input to the function. 
For example, 9 is a single digit, 66 has 2 digits and 128685 has 6 digits. 
Be careful to avoid overflows/underflows.

All inputs will be valid.
*/

// <My Solution>
func digits(num n: UInt64) -> Int {
  var myString = String(n)
  return myString.count
}

// <Others Solution>
func digits(num n: UInt64) -> Int {
    return String(n).characters.count
}
