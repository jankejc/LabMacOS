print("---------------")

// Exercise 1.1
print("Exercise 1.1")
func minValue(_ a: Int, _ b: Int) -> Int {
    if a > b {
        return b
    }
    else {
        return a
    } 
}

print(minValue(1,2))
print(minValue(43,32))
print(minValue(102,66))
print("---------------")


// Exercise 1.2
print("Exercise 1.2")
func lastDigit(_ number: Int) -> Int {
    return number % 10
}

print(lastDigit(1))
print(lastDigit(1234123))
print(lastDigit(78))
print(lastDigit(130))
print("---------------")

// Exercise 1.3
print("Exercise 1.3")

func divides(_ a: Int, _ b: Int) -> Bool {
    if a % b == 0 {
        return true
    }
    else {
        return false
    }
}

func countDivisors(_ number: Int) -> Int {
    var divisorsCounter: Int = 0
    for i in 1...number {
        if divides(number,i) {
            divisorsCounter += 1
        }
    }

    return divisorsCounter 
}

func isPrime(_ number: Int) -> Bool {
    if countDivisors(number) == 2 {
        return true
    } else {
        return false
    }
}

print(divides(7, 3)) // false - 7 is not divisible by 3
print(divides(8, 4)) // true - 8 is divisible by 4
 
print(countDivisors(1)) // 1 - 1
print(countDivisors(10)) // 4 - 1, 2, 5 and 10
print(countDivisors(12)) // 6 - 1, 2, 3, 4, 6 and 12

print(isPrime(3)) // true
print(isPrime(8)) // false
print(isPrime(13)) // true

print("---------------")

// Exercise 2.1
print("Exercise 2.1")

func smartBart(n: Int, f:()->())
{
    for _ in 1...n {
        f()
    }
}

smartBart(n: 5){
    print("I will pass this course with best mark, because Swift is great!")
}

print("---------------")

// Exercise 2.2
print("Exercise 2.2")

let numbers = [10, 16, 18, 30, 38, 40, 44, 50]
var array = Array<Int>()
array = numbers.filter{$0 % 4 == 0}
print(array)

print("---------------")

// Exercise 2.3
print("Exercise 2.3")

let maxValue = numbers.reduce(Int.min, { max($0, $1) })
print(maxValue)

print("---------------")

// Exercise 2.4
print("Exercise 2.4")
var strings = ["Gdansk", "University", "of", "Technology"]
print(strings.reduce(""){$0 + $1 + " "})

print("---------------")

// Exercise 2.5
print("Exercise 2.5")
let numbers1 = [1, 2 ,3 ,4, 5, 6]
print(numbers1.filter{$0 % 2 == 1}.map{$0 * $0}.reduce(0){$0 + $1})

print("---------------")

// Exercise 3.1
print("Exercise 3.1")

func minmax(_ a: Int, _ b: Int) -> (Int, Int) {
    return (a,b)
}

let minmaxTuple: (Int, Int) = minmax(2,3)
print(minmaxTuple)

print("---------------")

// Exercise 3.2
print("Exercise 3.2")

var stringsArray = ["gdansk", "university", "gdansk", "university", "university", "of",  "technology", "technology", "gdansk", "gdansk"]

var countedStrings = [(String, Int)]()
var if_string_exist: Bool
for i in 0...(stringsArray.count-1) {
    if_string_exist = false
    

    if(countedStrings.count != 0){
        for j in 0...(countedStrings.count-1) {
            if countedStrings[j].0 == stringsArray[i] {
                if_string_exist = true
            }
        }
    }
    
    if if_string_exist == false {
        countedStrings.append(("",0))
        countedStrings[countedStrings.count - 1].0 = stringsArray[i]
        countedStrings[countedStrings.count - 1].1 = 0
        for j in 0...(stringsArray.count-1) {
            if stringsArray[i] == stringsArray[j] {
                countedStrings[countedStrings.count - 1].1 += 1
            }
        }
    }
}

print(countedStrings)

print("---------------")

// Exercise 4.1
print("Exercise 4.1")

enum Day: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6 
    case Sunday = 7
    
    func dailyEmoji() -> String {
        switch self {
        case .Monday:
            return "🤯"
        case .Tuesday:
            return "🧐"
        case .Wednesday:
            return "🤠"
        case .Thursday:
            return "🤓"
        case .Friday:
            return "🤪"
        case .Saturday:
            return "🤭"
        case .Sunday:
            return "🙏"
        }
    }
}

let day = Day.Sunday
print(day.dailyEmoji())

let anotherDay = Day(rawValue: 1)!
print(anotherDay.dailyEmoji())
































