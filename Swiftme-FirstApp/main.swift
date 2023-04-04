//
//  main.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

//print("Введите количество аргументов (от 2 до 10)")
//var countArgument = readLine()
//checkOperation(&countArgument, count: 2...10)


print("Введите value One")
var valueOne = readLine() 
checkValue(&valueOne)

print("Введите value Two")
var valueTwo = readLine()
checkValue(&valueTwo)

print("Выберите номер операции из списка:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Divison\n5. Exponentiation")
var choseNumOperation = readLine()
checkOperation(&choseNumOperation, count: 1...5)
let operation = chooseOperation(choseNumOperation)


let result = sum(valueOne, valueTwo, operation)
print("result = \(result)")


