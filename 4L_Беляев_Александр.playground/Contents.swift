import UIKit

enum Color: String {
    case black, white, blue, red, yellow
}

class Car {
    let doors: Int
    let color: Color
    var transmission: String
    
    init(doors: Int, color: Color, transmission:String) {
        self.doors = doors
        self.color = color
        self.transmission = transmission
    }
}

class SportCar:Car {
    var horsePower: Int
    var haveNOS: Bool = false
    
    init(horsePower: Int) {
        self.horsePower = horsePower
        super.init(doors: 2, color: .red, transmission: "RWD")
    }
    
    func changeNOSState() {
        self.haveNOS.toggle()
        if haveNOS == false{
            print ("NOS не подключен.\n")
        } else {
            print ("NOS подключен.\n")
        }
    }
    
    func oneMileDragRacing(){
        var mileTime: Float = 0
        if haveNOS == true || horsePower >= 500 {
            mileTime = Float.random(in: 25..<35)
        } else {
            mileTime = Float.random(in: 40..<50)
        }
        print("Время прохождения 1 мили: \(NSString(format: "%.3f", mileTime)) секунд.\n")
    }
}

class TrunkCar:Car {
    let сargoSpace: Int
    var occupiedCargoSpace: Int = 0
    
    init(сargoSpace:Int) {
        self.сargoSpace = сargoSpace
        super.init(doors: 4, color: .white, transmission: "AWD")
    }
    
    func putThingsIn (_ space:Int) {
        if space > сargoSpace || occupiedCargoSpace + space > сargoSpace{
            print ("Вы не можете поместить в багажник груз такого объема! Доступное место в багажнике: \(сargoSpace - occupiedCargoSpace) литров.\n")
        } else {
            occupiedCargoSpace += space
            print ("В багажник помещен груз объемом \(space) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
    
    func getThingsOut (_ space:Int) {
        if space > occupiedCargoSpace {
            print ("В багажнике нет столько вещей, сколько вы хотите выгрузить. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        } else {
            occupiedCargoSpace -= space
            print ("Из багажника извлечен груз объемом \(space) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
}

let Lamborghini = SportCar(horsePower: 500)
let Ferrari = SportCar(horsePower: 400)
let Chevrolet = TrunkCar(сargoSpace: 2100)

Lamborghini.oneMileDragRacing()
Ferrari.oneMileDragRacing()
Ferrari.changeNOSState()
Ferrari.oneMileDragRacing()

print("\n========================================================================================\n")

Chevrolet.putThingsIn(1000)
Chevrolet.putThingsIn(2000)
Chevrolet.getThingsOut(1500)
Chevrolet.getThingsOut(500)
