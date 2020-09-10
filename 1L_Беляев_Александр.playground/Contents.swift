import UIKit
//import Foundation

// Задание 1. Решить квадратное уравнение.

print ("Программа решает квадратное уравнение вида: A*X^2+B*X+C=0.\n")

let coefficientA:Float = 2
let coefficientB:Float = 3
let coefficientC:Float = -5

if coefficientA == 0 {
    print ("Так как коэффициент А = 0, уравнение не является квадратным!")
} else {
    print ("Коэффициент A =", coefficientA)
    print ("Коэффициент B =", coefficientB)
    print ("Коэффициент C =", coefficientC)

    let discriminant:Float = (coefficientB*coefficientB)-4*coefficientA*coefficientC

    print ("\nДискриминант (D) =", NSString(format: "%.2f", discriminant))

    if discriminant > 0 {
        let firstRoot:Float = (-coefficientB + sqrt(discriminant))/(2*coefficientA)
        print ("\nПервый корень уравнения (X1) =", NSString(format: "%.2f", firstRoot))
        let secondRoot:Float = (-coefficientB - sqrt(discriminant))/(2*coefficientA)
        print ("Второй корень уравнения (X2) =", NSString(format: "%.2f", secondRoot))
    } else if discriminant < 0 {
        print ("\nУравнение не имеет вещественных корней, так как дискриминант меньше 0.")
    } else {
        let root:Float = (-coefficientB)/(2*coefficientA)
        print ("\nКорень x =", root)
    }
}
print("\n========================================================================================\n")

// Задание 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

print ("Программа находит площадь, периметр и гипотенузу прямоугольного треугольника по катетам.\n")

let cathetusA:Float = 6
let cathetusB:Float = 5

if cathetusA <= 0 {
    print ("Катет не может быть отрицательным числом или равняться нулю!")
} else if cathetusB <= 0 {
    print ("Катет не может быть отрицательным числом или равняться нулю!")
} else {
    print ("Катет А =", cathetusA)
    print ("Катет B =", cathetusB)

    let hypotenuse:Float = sqrt((cathetusA*cathetusA)+(cathetusB*cathetusB))
    print("\nГипотенуза треугольника (C) =", NSString(format: "%.2f", hypotenuse))
    
    let square:Float = (cathetusA*cathetusB)/2
    print ("\nПлощадь треугольника (S) =", NSString(format: "%.2f", square))

    let perimeter:Float = cathetusA + cathetusB + hypotenuse
    print ("Периметр треугольника (P) =", NSString(format: "%.2f", perimeter))
}

print("\n========================================================================================\n")

// Задание 3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

print ("Программа рассчитывает сумму вклада с процентами за 5 лет.\n")

var deposit:Float = 80000
let percent:Float = 7
let years:Int = 5

if deposit < 0 {
    print ("Сумма вклада не может быть отрицательной!")
} else if percent < 0 {
    print ("Процент по вкладу не может быть отрицательным!")
    } else {
    print ("Сумма вклада :", deposit)
    print ("Процент по вкладу :", percent, "\n")

    var index:Int = 1

    repeat {
        let profit:Float = (deposit * (percent / 100))
        deposit = deposit + profit
        print ("Сумма вклада на конец",index,"-го года :", NSString(format: "%.2f", deposit))
        index += 1
    } while index < 6
}
