//: [Previous](@previous)

import Foundation

var word = "heeey world .jpg"
let number = word.count
print("\(word) is \(number) characters long")
print(word.hasSuffix(".jpg"))

let a = 1
let b = 2.0
let c = Double(a) + b
let d = a + Int(b)

print(c)
print(d)

var rating = 5.0
rating *= 2

print(Int(rating))

var value = true
value.toggle()
print (value)

var scores = [Int]()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[0])

let presidents = ["Bush", "Obama", "Trump", "Biden"]
for p in presidents.reversed(){
    print(p)
}

let r = Array(presidents.reversed())
print("\(r[1]) sucks")

let myArray = [
    "color": "seafoam",
    "type": "helv"
]

print(myArray["color", default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

print(heights["LeBron James"]!)

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

enum Weekday{
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

print(day)

var score: Double = 0
print(score)

let place = "Gotham"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}


//switch conditions
let num = 5
print("My true love gave to me…")

switch num {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//ternary condition
let age = 16
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

let filenames = ["me.jpg", "logo.psd", "work.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}


func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)
