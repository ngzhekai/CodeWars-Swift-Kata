/* 

  --> Instruction <--
  There is an array with some numbers. All numbers are equal except for one. Try to find it!

  findUniq([ 1, 1, 1, 2, 1, 1 ]) == 2
  findUniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
  It’s guaranteed that array contains at least 3 numbers.

  The tests contain some very huge arrays, so think about performance.
  --> Instruction <--

*/ 


// This function is for accepting Integer array and returning Int variable.
func findUniq(_ arr: [Int]) -> Int {
  
  var n : Int
  var newarr = arr
  newarr.sort() 
  // since there will be one unique integer in the array just sort it 
  // it will either in the first or last array
  // compare 
  if newarr[0] == newarr[1] { n = newarr[newarr.count - 1] }
  else { n = newarr[0] }
  return n // unique integer in the array
}

// This function is for accepting Double array and returning Double variable.
func findUniq(_ arr: [Double]) -> Double {
  
  var n : Double
  var newarr = arr
  newarr.sort()
  if newarr[0] == newarr[1] { n = newarr[newarr.count - 1] }
  else { n = newarr[0] }
  return n // unique double in the array
}

// It is lengthy but it works.
