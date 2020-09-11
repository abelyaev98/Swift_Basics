import UIKit

//Задание 1. Написать функцию, которая определяет, четное число или нет.

func evenNotEven (_ сheckedNumber: Int) {
    if сheckedNumber % 2 == 0 {
        print ("\nЧисло \(сheckedNumber) - четное.")
    } else {
        print ("\nЧисло \(сheckedNumber) - нечетное.")
    }
}

evenNotEven(20)

print("\n========================================================================================\n")

//Задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func divisionByThree (_ сheckedNumber: Int) {
    if сheckedNumber % 3 == 0 {
        print ("Число \(сheckedNumber) - делится на 3 без остатка.")
    } else {
        print ("Число \(сheckedNumber) - не делится на 3 без остатка.")
    }
}

divisionByThree(33)

print("\n========================================================================================\n")

//Задание 3. Создать возрастающий массив из 100 чисел.

func fillingTheArray(_ amountOfElements:Int) {
    let numbers = Array (1...amountOfElements)
    print ("Исходный массив: \(numbers)")
}

fillingTheArray(100)

print("\n========================================================================================\n")

// Задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

