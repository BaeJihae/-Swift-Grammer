import UIKit

var a = [1,2,3,4,5,6,7]
var b = [1,2,3,4,5,6,7]

var removeA = a.removeLast()
var removeB = b.popLast()

print(removeA) // 7
print(removeB) // Optional(7)

print(a) // [1, 2, 3, 4, 5, 6]
print(b) // [1, 2, 3, 4, 5, 6]

a = []
b = []

//removeA = a.removeLast() // 🚨 Error
removeB = b.popLast()

print(removeB) // nil

