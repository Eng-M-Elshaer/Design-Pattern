import UIKit

protocol Human {
    
    var name: String {get set}
    
    func run()
    func eat()
    func sleep()
    
}

enum HumanTypes {
    
    case soldier
    case civlian
    
}

class Soldier: Human {
    
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func run() {
        print("The Soldier named: \(name) is runnig ...")
    }
    
    func eat() {
        print("The Soldier named: \(name) is eating ...")
    }
    
    func sleep() {
        print("The Soldier named: \(name) is sleeping ...")
    }
    
}

class Civlian: Human {
    
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func run() {
        print("The Civlian named: \(name) is runnig ...")
    }
    
    func eat() {
        print("The Civlian named: \(name) is runnig ...")

    }
    
    func sleep() {
        print("The Civlian named: \(name) is runnig ...")

    }
    
}

class HumanFactory {
    
    private static var shared = HumanFactory()
    
    class func share() -> HumanFactory {
        return shared
    }
    
    func getHuman(humanType: HumanTypes,humanName: String) -> Human {

        switch humanType {
        case .soldier:
            return Soldier(name: humanName)
        case .civlian:
            return Civlian(name: humanName)
        }
        
    }
    
}

let soldier = HumanFactory.share().getHuman(humanType: .soldier, humanName: "Ali")
soldier.eat()

let civlian = HumanFactory.share().getHuman(humanType: .civlian, humanName: "Ahmed")
civlian.run()
