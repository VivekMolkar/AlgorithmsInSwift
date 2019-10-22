import UIKit


let arr = [1,2,3,5,6,7,8,9,10]

let sum = arr.reduce(0, { (x, y) in
      x + y
  })

let n = 10
let sumOfFirst = (n*(n+1))/2

let final = sumOfFirst - sum
