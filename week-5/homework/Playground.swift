import Playgrounds

class Employee {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary(){
     print("I have worked \(hours) hours")
}

}

class Manager: Employee {
    func work() {
    print("I am writing code for \(hours)")
    }
}

class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertable: Bool
    init(isElectric: Bool, isConvertable: Bool) {
        self.isConvertable = isConvertable
        super.init(isElectric: isElectric)
    }
}

class Toyota: Car {
    let name: String
    let color: String
    init(isConvertable: Bool, isElectric: Bool, name: String, color: String){
        self.name = name
        self.color = color
        super.init(isElectric: isElectric, isConvertable: isConvertable)
    }
    
    func carColor() {
        print("the \(name) is \(color)")
    }
}

class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

#Playground {
    
    //classes
    
    let rob = Manager(hours: 8)
    let jo = Manager(hours: 10)
    
    rob.work()
    jo.work()
    jo.printSummary()
    
    //creating new initializers
    
    let toyota = Toyota(isConvertable: true, isElectric: false, name: "toyota", color: "grey")
    toyota.carColor()
    
    //copying a class
    let user1 = User()
    let user2 = user1.copy()
    user2.username = "Mina"
    
    print(user1.username)
    print(user2.username)
    
}
