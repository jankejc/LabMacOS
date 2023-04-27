import Foundation

/// String and Text
// Exercise 1.1
var number1: Int = 5
var number2: Int = 10
print("\(number1) + \(number2) = \(number1 + number2)")

// Exercise 1.2
let univ_str: String = "Gdansk University of Technology"
var copy_univ_str:String = univ_str.replacingOccurrences(of: "n", with: "⭐️")
print(copy_univ_str)

// Exercise 1.3
let my_name:String = "Jan Kornacki"
let my_name_rev:String = String(my_name.reversed())
print("\(my_name) -> \(my_name_rev)")

// Exercise 2.1
let bart_str: String = "I will pass this course with best mark, because Swift is great!"
for _ in 1...11
{
    print(bart_str)
}

// Exercise 2.2
let n_times: Int = 4
for i in 1...n_times
{
    print(i*i)
}

// Exercise 2.3 - O(n) instead of repeating O(n^2) times "@" in for-in
var monkey_str: String = ""
for i in 1...n_times
{
    monkey_str = monkey_str + "@"
}

for i in 1...n_times
{
    print(monkey_str)
}

print("-1")
print("-1")
print("-1")
print("-1")
print("-1")
print("-1")
print("-1")
print("-1")
print("-1")














