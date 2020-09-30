import UIKit
import Foundation


enum IntErrors: String, Error {
    case tooManyThings = "В багажник не поместится груз такого объема!"
    case tooFewThings = "В багажнике нет столько вещей, сколько вы хотите выгрузить!"
    case negativeValue = "Значение не может быть отрицательным!"
    
}

protocol Car {
    var weels: Int {get}
    var cargoSpace: Int {get}
    var occupiedCargoSpace: Int {get set}
}

extension Car {
    
    mutating func putThingsIn (_ thingsSpace: Int) throws {
        if thingsSpace > cargoSpace || occupiedCargoSpace + thingsSpace > cargoSpace {
            throw IntErrors.tooManyThings
        } else if thingsSpace < 0 {
            throw IntErrors.negativeValue
        } else {
            occupiedCargoSpace += thingsSpace
            print ("\nВ багажник помещен груз объемом \(thingsSpace) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
    
    mutating func getThingsOut (_ thingsSpace: Int) throws {
        if thingsSpace > occupiedCargoSpace {
            throw IntErrors.tooFewThings
        } else if thingsSpace < 0 {
            throw IntErrors.negativeValue
        } else {
            occupiedCargoSpace -= thingsSpace
            print ("\nИз багажника извлечен груз объемом \(thingsSpace) литров. Заполненность багажника: \(occupiedCargoSpace) литров.\n")
        }
    }
}

class SportСar: Car {
    var weels: Int = 4
    var cargoSpace: Int = 200
    var occupiedCargoSpace: Int = 0
}

extension SportСar: CustomStringConvertible {
    var description: String {
        return "СПОРТКАР\nКолес: \(weels)\nОбъем багажника: \(cargoSpace)\nЗанятое местно в багажнике: \(occupiedCargoSpace).\n"
    }
    func printDescription() {
        print(description)
    }
}

var Lamborghini = SportСar ()

func errorsCheckPutThingsIn (_ value: Int) {
    
    do {
        try Lamborghini.putThingsIn(value)
    } catch {
        if let error = error as? IntErrors {
            print (error.rawValue)
        }
    }
}

func errorsCheckGetThingsOut (_ value: Int) {
    
    do {
        try Lamborghini.getThingsOut(value)
    } catch {
        if let error = error as? IntErrors {
            print (error.rawValue)
        }
    }
}

errorsCheckPutThingsIn(100)
errorsCheckPutThingsIn(1000)
errorsCheckPutThingsIn(-100)

errorsCheckGetThingsOut(50)
errorsCheckGetThingsOut(500)
errorsCheckGetThingsOut(-50)

print("\n\(Lamborghini.description)")
