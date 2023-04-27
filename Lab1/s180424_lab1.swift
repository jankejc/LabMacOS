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

// Exercise 3.1
var numbers = [5, 10, 20, 15, 80, 13]
// var numbers = Array<Int>() -> "Array is empty!" prompt.
var maximum:Int? = numbers.max()
if let maximum = maximum
{
    print(maximum)
}
else
{
    print("Array is empty!")
}

// Exercise 3.2
var numbers_reversed: [Int] = numbers.reversed()
print(numbers_reversed)

// Exercise 3.3
var allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
var unique = Array<Int>()
var if_exist: Bool = false
for elem_all in allNumbers 
{
    for elem_uniq in unique
    {
        if elem_uniq == elem_all
        {
            if_exist = true
        }
    }

    if if_exist == false
    {
        unique.append(elem_all)
    }
    else
    {
        if_exist = false
    }
}
print(unique)

// Exercise 4.1
var number: Int = 10
var divisors = Set<Int>()
for i in 1...number
{
    if number % i == 0
    {
        divisors.insert(i)
    }
}
divisors.intersection(divisors).sorted()
print("divisors = \(divisors)")

// Exercise 5.1
var flightNumbers = Array<String>()
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]

for elem in flights
{        
    if let number = elem["flightNumber"]
    {
        flightNumbers.append(number)
    }
}

print("flightNumbers = \(flightNumbers)")

// Exercise 5.2
var lastName: String = "Simpson"
var names = ["Hommer","Lisa","Bart"]
var fullName = [[String: String]]()
for firstName in names
{
    fullName.append(["lastName": lastName, "firstName": firstName])
}
print(fullName)














