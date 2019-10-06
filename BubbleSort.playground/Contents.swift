import UIKit

func bubbleSort<T: Comparable>(_ array:inout [T]) {
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
}

// Integer
var iList = [2, 18, 2, 20, 10, 11, 15, 4, 9, 16]
bubbleSort(&iList)
print(iList)

// String
var sList = ["bba","bbb","aaa","aab","abb","aba","baa","bab"]
bubbleSort(&sList)
print(sList)
