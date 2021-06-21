/*
--> Instructions <--
Write a function that takes an array of numbers (integers for the tests) and a target number. 
It should find two different items in the array that, when added together, give the target value. 
The indices of these items should then be returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; 
target will always be the sum of two different items from that array).

Based on: http://oj.leetcode.com/problems/two-sum/
twoSum [1, 2, 3] 4 === (0, 2)

*/

// <Others Solution>

class Solution {
  static func twosum(numbers: [Double], target: Double) -> [Int] {
    for x in 0..<numbers.count {
    
      for y in 0..<numbers.count {
      
        if numbers[x] + numbers[y] == target && x != y { return [x, y] }
      
      }
    
    }
    return [0]
  }
}

// <My Solution>
class Solution {
  static func twosum(numbers: [Double], target: Double) -> [Int] {
    var hashTable = [Double: Int]() // empty dictionary for storing Index as value and num as keys
    
    for (index, num) in numbers.enumerated() {
      if let lastIndex = hashTable[target - num] {
        return[lastIndex, index]
      }
      hashTable[num] = index
    }
    fatalError("Unable to match numbers with the target")
  }
}
