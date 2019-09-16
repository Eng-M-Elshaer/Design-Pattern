import UIKit

class Engine {
    
    func makeEngine(){
        print("Making Engine")
    }
    
}

class CarBody {
    
    func makeBody(){
        print("Making Car Body")
    }
    
}

class Accessories {
    
    func makeAccessories(){
        print("Making Accessories")
    }
    
}

class MakeCarFacade {
    
    let engine = Engine()
    let body = CarBody()
    let accessories = Accessories()
    
    func makeCar() {
        engine.makeEngine()
        body.makeBody()
        accessories.makeAccessories()
    }
}


let car = MakeCarFacade()
car.makeCar()
