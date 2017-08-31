//
//  CalculatorMain.swift
//  Calc
//
//  Created by Vencislav Petkov on 8/30/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import Foundation

func changeSign (operrand: Double) -> Double {
    return -operrand
}

func multiply(op1: Double, op2: Double ) -> Double {
    return op1 * op2
}


struct CalculatorMain {
    
    
    private var accumulator: Double?
    
    
    private enum Operation {
    
        case constant(Double)
        case unary ((Double) -> Double)
        case binary((Double, Double) -> Double)
        case equals
    
    }
    
    
    
    private var operations: Dictionary<String, Operation> = [
    
        "π" : Operation.constant(Double.pi),
        "e" : Operation.constant(M_E),
        "√" : Operation.unary(sqrt),
        "cos" : Operation.unary(cos),
        "+/-" : Operation.unary(changeSign),
        "x" : Operation.binary(multiply),
        "/" : Operation.binary({$0 / $1}),
        "+" : Operation.binary({$0 + $1}),
        "-" : Operation.binary({$0 - $1}),
        "=" : Operation.equals
    ]
    
    
    struct PendingBinaryOperation {
        
        let function: (Double, Double) -> Double
        let firstOperand: Double
        
        func perform(with secondOperand: Double) -> Double {
            return function(firstOperand, secondOperand)
        }
        
    }
    
    
    
    var pbo: PendingBinaryOperation?

    
    private mutating func performPendingBinaryOperation(){
        
        if pbo != nil && accumulator != nil {
            accumulator = pbo!.perform(with: accumulator!)
            pbo = nil
        }
        
        
    }

    
    
    
    
    
    mutating func performOperation(_ symbol: String) {
        
        
        if let operation = operations[symbol]{
        
            switch operation {
            case .constant(let value):
                accumulator = value
            case .unary(let function):
                if accumulator != nil {
                    accumulator = function(accumulator!)
                }
            case .binary(let function):
                if accumulator != nil {
                    pbo = PendingBinaryOperation(function: function, firstOperand: accumulator!)
                    accumulator = nil
                }
            case .equals:
                performPendingBinaryOperation()
            }
        
        }
        
        
        
        
        
        
       
        
        
        
        
        
//        switch symbol {
//        case "π":
//            accumulator = Double.pi
//            
//        case "√":
//            if let operand = accumulator{
//                accumulator = sqrt(operand)
//            }
//        default:
//            break
//        }

    }
    
    
    mutating func setOperand(operand: Double){
        
        accumulator = operand
        
    }
    
    
    var result: Double? {
    
        get {
            
            return accumulator
        
        }
        
        
    }
    
    
    
}


























