import UIKit

let arr = ["a","b","c","d","e","f","g"]

for i in 0 ..< arr.count{
    print(arr[i])
    print(arr[arr.startIndex.advancedBy(i)])
}
