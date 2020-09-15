import UIKit

struct Car {
    let model: String
    let year: Int
    let color: String
    let doors: Int
    let seats: Int
    let сargoSpace: Int
    var occupiedCargoSpace: Int = 0
    var engineOn: Bool
    var windowsOpen: Bool
    
    mutating func startEngine() {
        if engineOn == false {
            engineOn = true
            print ("Двигатель запущен.")
        } else {
            print ("Двигатель уже запущен!")
        }
    }
    
    mutating func stopEngine() {
        if engineOn == true {
            engineOn = false
            print ("Двигатель заглушен.")
        } else {
            print ("Двигатель уже заглушен!")
        }
    }
    
    mutating func openWindows() {
        if windowsOpen == false {
            windowsOpen = true
            print ("Окна открыты.")
        } else {
            print ("Окна уже открыты!")
        }
    }
    
    mutating func closeWindows() {
        if windowsOpen == true {
            windowsOpen = false
            print ("Окна закрыты.")
        } else {
            print ("Окна уже закрыты!")
        }
    }
    
    mutating func putThingsIn (_ space:Int) {
        if space > сargoSpace || occupiedCargoSpace + space > сargoSpace{
            print ("Вы не можете поместить в багажник груз такого объема! Доступное место в багажнике: \(сargoSpace - occupiedCargoSpace) литров.")
        } else {
            occupiedCargoSpace += space
            print ("В багажник помещен груз объемом \(space) литров. Заполненность багажника: \(occupiedCargoSpace) литров.")
        }
    }
    
    mutating func getThingsOut (_ space:Int) {
        if space > occupiedCargoSpace {
            print ("В багажнике нет столько вещей, сколько вы хотите выгрузить. Заполненность багажника: \(occupiedCargoSpace) литров.")
        } else {
            occupiedCargoSpace -= space
            print ("Из багажника извлечен груз объемом \(space) литров. Заполненность багажника: \(occupiedCargoSpace) литров.")
        }
    }
}

var SportCar = Car(model: "Lamborghini Huracan", year: 2019, color: "Green", doors: 2, seats: 2, сargoSpace: 150, engineOn: false, windowsOpen: false)
var TrunkCar = Car(model: "Ford F-150", year: 2015, color: "Blue", doors: 4, seats: 5, сargoSpace: 2190, engineOn: false, windowsOpen: false)


print("Модель: \(SportCar.model)\nГод: \(SportCar.year)\nЦвет: \(SportCar.color)\nКоличество дверей: \(SportCar.doors)\nКоличество мест: \(SportCar.seats)\nОбъем багажника: \(SportCar.сargoSpace)\n")

// Проверяем корректность работы функций startEngine, stopEngine, openWindows, closeWindows, putThingsIn и getThingsOut для структуры SportCar

SportCar.startEngine()

SportCar.startEngine()

SportCar.stopEngine()

SportCar.stopEngine()

SportCar.startEngine()

SportCar.openWindows()

SportCar.openWindows()

SportCar.closeWindows()

SportCar.closeWindows()

SportCar.putThingsIn(120)

SportCar.putThingsIn(20)

SportCar.putThingsIn(20)

SportCar.getThingsOut(30)

SportCar.getThingsOut(120)

SportCar.getThingsOut(30)

// Вывод значений свойств SportCar после вызовов функций

print ("\nСвойство SportCar.engineOn на данный момент в состоянии: \(SportCar.engineOn)")
print ("Свойство SportCar.windowsOpen на данный момент в состоянии: \(SportCar.windowsOpen)")
print ("Заполненность багажника (свойство SportCar.occupiedCargoSpace) на данный момент: \(SportCar.occupiedCargoSpace) литров")

print("\n \nМодель: \(TrunkCar.model)\nГод: \(TrunkCar.year)\nЦвет: \(TrunkCar.color)\nКоличество дверей: \(TrunkCar.doors)\nКоличество мест: \(TrunkCar.seats)\nОбъем багажника: \(TrunkCar.сargoSpace)\n")

// Проверяем корректность работы функций startEngine, stopEngine, openWindows, closeWindows, putThingsIn и getThingsOut для структуры TrunkCar

TrunkCar.startEngine()

TrunkCar.startEngine()

TrunkCar.stopEngine()

TrunkCar.stopEngine()

TrunkCar.openWindows()

TrunkCar.openWindows()

TrunkCar.closeWindows()

TrunkCar.closeWindows()

TrunkCar.openWindows()

TrunkCar.putThingsIn(560)

TrunkCar.putThingsIn(1500)

TrunkCar.putThingsIn(300)

TrunkCar.getThingsOut(700)

TrunkCar.getThingsOut(1400)

TrunkCar.getThingsOut(500)

// Вывод значений свойств TrunkCar после вызовов функций

print ("\nСвойство TrunkCar.engineOn на данный момент в состоянии: \(TrunkCar.engineOn)")
print ("Свойство TrunkCar.windowsOpen на данный момент в состоянии: \(TrunkCar.windowsOpen)")
print ("Заполненность багажника (свойство TrunkCar.occupiedCargoSpace) на данный момент: \(TrunkCar.occupiedCargoSpace) литров")
