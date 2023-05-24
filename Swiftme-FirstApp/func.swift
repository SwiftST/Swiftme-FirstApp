//
//  func.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

import Foundation

// возведение в степень (рекурсия)
let exponentiation = { (_ numberOne: Int, _ numberTwo: Int) in
    guard numberOne > 0, numberTwo > 0 else {
        return 0
    }
    if numberTwo == 1 {
        return numberOne
    }
    if numberTwo == 2 {
        return numberOne * numberOne
    }
    return numberOne * exponentiation(numberOne, numberTwo - 1)
}

// выбор операции, определение результата выражения
func chooseOperation(_ operation: String?, integers: [Int]) -> Int {
    var result: Int = 0
    switch operation {
    case "1":
        result = integers.reduce(0, +)
    case "2":
        result = integers[1...].reduce(integers[0], -)
    case "3":
        result = integers[1...].reduce(integers[0], *)
    case "4":
        result = integers[1...].reduce(integers[0], /)
    case "5":
        result = exponentiation(integers[0], integers[1])
    default:
        break
    }
    return result
}

// проверка ввода значения
func checkValue(_ value: inout String?) {
    while Int(value!) == nil {
        print("Некорректное значение.\nПовторите ввод")
        value = readLine()
    }
}

// проверка ввода номера функции
func checkOperation(_ value: inout String?, count: ClosedRange<Int>) {
    while true {
        guard (Int(value ?? "0") != nil) && count ~= Int(value!)! else {
            print("Некорректное значение.\nПовторите ввод")
            value = readLine()
            continue
        }
        return
    }
}


