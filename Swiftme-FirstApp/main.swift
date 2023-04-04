//
//  main.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

print("Введите value One")
var valueOne = readLine() 
checkValue(&valueOne)

print("Введите value Two")
var valueTwo = readLine()
checkValue(&valueTwo)

print("Выберите операцию из списка")

let result = sum(valueOne, valueTwo)
print("result = \(result)")


