//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var emptyList: [String] = []
var notEmptyList: [String] = ["Doug", "Matt", "Teddy"]

func firstItem (list: [String]) -> String? {
    
    if list.isEmpty {
        return nil
    } else {
        return list [0]
    }
}

print(firstItem(emptyList))
print(firstItem(notEmptyList))
print(firstItem(notEmptyList)!)

if let firstItem = firstItem(emptyList) {
    print ("the array is not empty")
} else {
    print ("List is empty")
}

if let firstItem = firstItem(notEmptyList) {
    print ("list is not empty. \(firstItem) is the first item")
}

func produceFullName (first: String, middle: String?, last: String) -> String {
    var name = "\(first)"
    if let middle = middle {
        name = "\(first) \(middle)"
    }
    name = ("\(name) \(last)")
    return name
}

print (produceFullName("Douglas", middle: "Edward", last: "Galante"))
print (produceFullName("Doug", middle: nil, last: "Galante"))
