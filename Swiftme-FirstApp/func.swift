//
//  func.swift
//  Swiftme-FirstApp
//
//  Created by Павел Зубрилов on 26.03.2023.
//

import Foundation

func sum(_ a: String?, _ b: String?) -> String {
    guard let oneV = a, let twoV = b else { return "Incorrect value" }
    guard let one = Int(oneV), let two = Int(twoV) else { return "Incorrect value" }
    let result = one + two
    return String(result)
}

