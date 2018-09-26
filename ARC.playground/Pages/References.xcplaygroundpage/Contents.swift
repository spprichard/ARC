import UIKit

var str = "Hello Playground!"

var newStr = str

str = "Hello World!"

if str == newStr {
    print("\(str) is equal to \(newStr)")
} else {
    print("\(str) is NOT equal to \(newStr)")
}


class Person {
    var first: String
    var last: String
    
    init(first: String, last: String) {
        self.first = first
        self.last = last
    }
}

let jim = Person(first: "Jim", last: "Simmons")
jim.first   // "Jim"
jim.last    // "Simmons"

let jane = jim
jane.first  // "Jim"
jane.last   // "Simmons"

jane.first = "Jane"
jane.first
jim.first


class Device {
    var manufacturer: String
    var model: String
    
    init(manufacturer: String, model: String) {
        self.manufacturer = manufacturer
        self.model = model
    }
    
    // this is to prove a point
    deinit {
        print("The device is about to be deallocated")
    }
}

var deviceJim: Device?
var deviceJane: Device?

deviceJim = Device(manufacturer: "Apple", model: "iPhone 7")
deviceJane = deviceJim

// Decrement the reference count below
deviceJim = nil

// When we mark deviceJane to nil, there are no more references to the Device instance
deviceJane = nil


// MARK: - Strong References & Reference Cycles

class Account {
    var plan: Plan
    // ... things & stuff
}

class Plan {
    var account: Account
    
    init(account: Account) {
        self.account = account
    }
}

// References are strong by default - so Account holds a strong reference to Plan, and vice versa
// This is a referece cycle! - These are BAD!
// Good going, you created a Memory Leak!!!


