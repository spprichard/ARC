//: [Previous](@previous)

import Foundation

class Account{
    // This throws an error currently:
    // stored property 'plan' without initial value prevents synthesized initializers
    var plan: Plan
}

class Plan {
    // unowned solves the problem of a reference cycle illustrated in the previous example
    // With unowned we want to say that an Account should ALWAYS have a Plan,
    // but we don't want a reference cycle. We chose unowned over weak because
    // we want to reinforce the fact that Accounts must have Plans
    unowned var account: Account
    
    // Important distinction between unowned and weak.
    // unowned will always return a value, where weak will not
    // Weak variables are alwasys of Optional type
    
    init(account: Account){
        self.account = account
    }
}
//: [Next](@next)
