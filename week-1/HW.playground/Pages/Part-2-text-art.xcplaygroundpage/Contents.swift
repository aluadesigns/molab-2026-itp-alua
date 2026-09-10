var text = ["*"]
let spaces = Int.random(in: 0...4)

switch spaces {
case 1:
    text.append(" ")
case 2:
    text.append("  ")
case 3:
    text.append("  ")
case 4:
    text.append("   ")
default :
    text.append("")
}

for i in 0..<30 {
    if i%2 == 0 {
        print("\(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!)")
    }
    else {
        print("\(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!) \(text.randomElement()!)")
    }
}



// ! if an optional comes up, the progra will crash
// ?? "" safer way, so that when there is a null value, it puts "" instead

