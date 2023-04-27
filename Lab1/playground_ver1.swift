import Foundation

/// String and Text
// Exercise 1.1
var number1 = 5
var number2 = 10
print("\(number1) + \(number2) = \(number1 + number2)")

// Exercise 1.2
let univ_str = "Gdansk University of Technology"
var copy_univ_str = univ_str.replacingOccurrences(of: "n", with: "⭐️")
print(copy_univ_str)

// Exercise 1.3
let my_name = "Jan Kornacki"
let my_name_rev = String(my_name.reversed())
print("\(my_name) -> \(my_name_rev)")