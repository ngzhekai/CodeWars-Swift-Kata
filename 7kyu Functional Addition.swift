/*

--> Instruction <--
Create a function add(n)/Add(n) which returns a function that always adds n to any number

Note for Java: the return type and methods have not been provided to make it a bit more challenging.
--> Instruction <--

--> Example <--
addOne = add(1)
addOne(3) // 4

*/


// Solution 1 (best practice)

func add(_ n: Int) -> ((Int) -> Int) { 
  return { return $0 + n }
}


// Solution 2 (my solution)

func add(_ n: Int) -> ((Int) -> Int) { 
  
  func Add(_ x: Int) -> Int {
    return n + x
  }
  return Add(_: )
}


// Solution 3

func add(_ n: Int) -> ((Int) -> Int) { 
  
  func Add(_ x: Int) -> Int {
    return n + x
  }
  return Add
}
