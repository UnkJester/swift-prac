//
//  StructsEnums.swift
//  Calculator
//
//  Created by Jesse on 8/2/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import Foundation

// Enums provide central repository and safely accessed set of values
enum Operator: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    case nothing = ""
}

enum CalculationState: String {
    case enteringNum = "enteringNum"
    case newNumStarted = "newNumStarted"
}
