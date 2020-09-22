import UIKit

protocol Car {
    var weels: Int {get}
    var doors: Int {get}
    var horsePower: Int {get set}
    var cargoSpace: Int {get}
    var occupiedCargoSpace: Int {get set}
    var engineOn: Bool {get set}
    var windowsOpen: Bool {get set}
}

extension Car {
    mutating func engineControl (){
        engineOn.toggle()
        if engineOn == false {
            print ("Двигатель выключен.\n")
        } else {
            print ("Двигатель включен.\n")
        }
    }
    mutating func windowsControl (){
        windowsOpen.toggle()
        if windowsOpen == false {
            print ("Окна закрыты.\n")
        } else {
            print ("Окна открыты.\n")
        }
    }
    mutating func putThingsIn (_ thingsSpace: Int) {
        if thingsSpace > cargoSpace || occupiedCargoSpace + thingsSpace > cargoSpace{
            print ("Вы не можете поместить в багажник груз такого объема! Доступное место в багажнике: \(cargoSpace - occupiedCargoSpace) литров.\n")
        } else {
            occupiedCargoSpace += thingsSpace
            print ("В багажник помещен груз объемом \(thingsSpace) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
    mutating func getThingsOut (_ thingsSpace: Int) {
        if thingsSpace > occupiedCargoSpace {
            print ("В багажнике нет столько вещей, сколько вы хотите выгрузить. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        } else {
            occupiedCargoSpace -= thingsSpace
            print ("Из багажника извлечен груз объемом \(thingsSpace) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
}

class sportСar: Car {
    var weels: Int = 4
    var doors: Int = 2
    var horsePower: Int = 500
    var cargoSpace: Int = 200
    var occupiedCargoSpace: Int = 0
    var engineOn: Bool = false
    var windowsOpen: Bool = false
}

extension sportСar: CustomStringConvertible {
    var description: String {
        return "СПОРТКАР\nКолес: \(weels)\nДверей: \(doors)\nЛошадиных сил: \(horsePower)\nОбъем багажника: \(cargoSpace)\nЗанятое местно в багажнике: \(occupiedCargoSpace)\nДвигатель включен: \(engineOn)\nОкна открыты: \(windowsOpen)\n"
    }
    func printDescription() {
        print(description)
    }
}

class trunkCar: Car {
    var weels: Int = 6
    var doors: Int = 4
    var horsePower: Int = 250
    var cargoSpace: Int = 3500
    var occupiedCargoSpace: Int = 0
    var engineOn: Bool = false
    var windowsOpen: Bool = false
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "ГРУЗОВИК\nКолес: \(weels)\nДверей: \(doors)\nЛошадиных сил: \(horsePower)\nОбъем багажника: \(cargoSpace)\nЗанятое местно в багажнике: \(occupiedCargoSpace)\nДвигатель включен: \(engineOn)\nОкна открыты: \(windowsOpen)\n"
    }
    func printDescription() {
        print(description)
    }
}

var Lamborghini = sportСar ()
var Ford = trunkCar ()

Lamborghini.engineControl()
Lamborghini.engineControl()
Lamborghini.windowsControl()
Lamborghini.putThingsIn(100)
Lamborghini.putThingsIn(200)
Lamborghini.getThingsOut(50)
Lamborghini.getThingsOut(100)

Ford.engineControl()
Ford.windowsControl()
Ford.windowsControl()
Ford.putThingsIn(1000)
Ford.putThingsIn(3000)
Ford.getThingsOut(1500)
Ford.getThingsOut(500)

Lamborghini.printDescription()
Ford.printDescription()
