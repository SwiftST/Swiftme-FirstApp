//
//  main.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

print("Введите количество аргументов (от 2 до 10)")
var countArgument = readLine()
checkOperation(&countArgument, count: 2...10)
var choseNumOperation: String? = nil
var result: Int = 0
var arguments: [Int] = []

for i in 1...Int(countArgument!)! {
    print("Argument №\(i):")
    var value = readLine()
    checkValue(&value)
    arguments += [Int(value!)!]
}

if arguments.count == 2 {
    print("Выберите номер операции из списка:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Divison\n5. Exponentiation")
    choseNumOperation = readLine()
    checkOperation(&choseNumOperation, count: 1...5)
    result = chooseOperation(choseNumOperation, integers: arguments)
} else {
    print("Выберите номер операции из списка:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Divison")
    choseNumOperation = readLine()
    checkOperation(&choseNumOperation, count: 1...4)
    result = chooseOperation(choseNumOperation, integers: arguments)
}
        
print("result = \(result)")


