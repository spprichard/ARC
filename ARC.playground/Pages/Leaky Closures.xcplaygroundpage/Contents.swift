//: [Previous](@previous)

import Foundation

// Similar to the Device example before...
class Device {
    let model: String
    let manufacturer: String
    
    // But, we added this computed property, a closure that returns a summary string
    lazy var summary: () -> String = {
        return "\(self.model) \(self.manufacturer)"
    }
    // summary is holding reference to self which means
    // this closure holds a reference to an instance of Device
    // Device also holds a reference to summary ... its a circle!
    
    init(model: String, manufacturer: String) {
        self.model = model
        self.manufacturer = manufacturer
    }
    
    // we can verify this with a deinit
    deinit {
        print("Deallocated Device")
    }
}

var device: Device? = Device(model: "iPhone 7", manufacturer: "Apple")
device?.summary()

// There SHOULD be a print here ... but there isn't?
device = nil
// summary still has a reference to Device!
// Even when device is nil

//: [Next](@next)
