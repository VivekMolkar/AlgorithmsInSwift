import UIKit

//var arr = [1,2,3,4,5,6,7,8,9,10]
//var arr = [Int]()
//var arr = [1]
var arr = [1,2]

func recursiveSum(arr:[Int]) -> Int {
    
    if arr.count > 0 {
        return arr[0] + recursiveSum(arr: Array(arr[1..<arr.count]))
    } else {
        return 0
    }
}


let tmp = recursiveSum(arr: arr)
print(tmp)
