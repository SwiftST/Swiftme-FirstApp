//
//  func.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

import Foundation

let addition = { (_ numberOne: Int, _ numberTwo: Int) in
    numberOne + numberTwo
}

let subtraction = { (_ numberOne: Int, _ numberTwo: Int) in
    numberOne - numberTwo
}

let multiplication = { (_ numberOne: Int, _ numberTwo: Int) in
    numberOne * numberTwo
}

let division = { (_ numberOne: Int, _ numberTwo: Int) in
    numberOne / numberTwo
}

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

func chooseOperation(_ operation: String?) -> (Int, Int) -> Int {
    switch operation {
    case "1":
        return addition
    case "2":
        return subtraction
    case "3":
        return multiplication
    case "4":
        return division
    case "5":
        return exponentiation
    default:
        break
    }
    return addition
}

func sum(_ a: String?, _ b: String?, _ closure: (Int, Int) -> Int) -> String {
    let result = closure(Int(a!)!, Int(b!)!)
    return String(result)
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
    for _ in 1... {
        guard Int(value ?? "0") != nil else {
            print("Некорректное значение.\nПовторите ввод")
            value = readLine()
            continue
        }
        guard count ~= Int(value!)! else {
            print("Некорректное значение.\nПовторите ввод")
            value = readLine()
            continue
        }
        return
    }
}


