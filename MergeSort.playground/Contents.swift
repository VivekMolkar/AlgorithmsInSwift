import UIKit

// Merge arrays
func merge<T: Comparable>(_ first: [T], _ second: [T]) -> [T]{
    var mergedArray: [T] = [];
    var firstIndex = 0;
    var secondIndex = 0;

    while firstIndex < first.count && secondIndex < second.count {
        let firstElement = first[firstIndex]
        let secondElement = second[secondIndex]

        if firstElement < secondElement {
            mergedArray.append(firstElement)
            firstIndex += 1
        } else if firstElement > secondElement {
            mergedArray.append(secondElement)
            secondIndex += 1
        } else {
            mergedArray.append(firstElement)
            firstIndex += 1
            mergedArray.append(secondElement)
            secondIndex += 1
        }
    }

    while firstIndex < first.count {
        mergedArray.append(first[firstIndex])
        firstIndex += 1
    }

    while secondIndex < second.count {
        mergedArray.append(second[secondIndex])
        secondIndex += 1
    }

    return mergedArray;
}

// Entry
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    if (array.count == 1) {
        return array
    }

    let middle = array.count / 2
    let firstHalf = mergeSort(Array(array[0..<middle]))
    let secondHalf = mergeSort(Array(array[middle..<array.count]))

    return merge(firstHalf, secondHalf)
}

// Int
var iList = [2, 18, 2, 20, 10, 11, 15, 4, 9, 16]
print(mergeSort(iList))

// String
var sList = ["bba","bbb","aaa","aab","abb","aba","baa","bab"]
print(mergeSort(sList))
