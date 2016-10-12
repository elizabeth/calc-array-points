//
//  main.swift
//  CalcArrayPoints
//
//  Created by Elizabeth on 10/6/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import Foundation

// Build a calculator
func add(left : Int?, right : Int?) -> Double? {
    guard let l = left else {
        print("Must enter valid integers")
        return nil
    }    
    
    guard let r = right else {
        print("Must enter valid integers")
        return nil
    }    
    
    return Double(l) + Double(r)
}

func subtract(left : Int?, right : Int?) -> Double? {
    guard let l = left else {
        print("Must enter valid integers")
        return nil
    }    
    
    guard let r = right else {
        print("Must enter valid integers")
        return nil
    }    
    
    return Double(l) - Double(r)
}

func multiply(left : Int?, right : Int?) -> Double? {
    guard let l = left else {
        print("Must enter valid integers")
        return nil
    }    
    
    guard let r = right else {
        print("Must enter valid integers")
        return nil
    }
    
    return Double(l) * Double(r)
}

func divide(left : Int?, right : Int?) -> Double? {
    guard let l = left else {
        print("Must enter valid integers")
        return nil
    }    
    
    guard let r = right else {
        print("Must enter valid integers")
        return nil
    } 
    
    return Double(l) / Double(r)
}

func mathOperation(left : Int?, right : Int?, operation : (Int?, Int?) -> Double?) -> Double? {
    guard let l = left else {
        print("Must enter valid integers")
        return nil
    }
    
    guard let r = right else {
        print("Must enter valid integers")
        return nil
    }
    
    return operation(l, r)
}

// Array fun
func add(array : Array<Int>?) -> Double? {
    guard let numArray = array else {
        print("Must pass an array")
        return nil
    }
    
    var result : Int = 0
    for num in numArray {
        result += num
    }

    return Double(result)
}

func multiply(array : Array<Int>?) -> Double? {
    guard let numArray = array else {
        print("Must pass an array")
        return nil
    }
    
    var result : Int = 1
    if numArray.count == 0 {
        result = 0
    }
    
    for num in numArray {
        result *= num
    }

    return Double(result)
}

func average(array : Array<Int>?) -> Double? {
    guard let numArray = array else {
        print("Must pass an array")
        return nil
    }
    
    let total = add(array: numArray)
    
    let totalNum = numArray.count
    if totalNum == 0 {
        print("Array had no ints")
        return nil
    }
    
    return total/Double(totalNum)
}

func count(array : Array<Int>?) -> Double? {
    guard let numArray = array else {
        print("Must pass an array")
        return nil
    }
    
    return Double(numArray.count)
}

func reduce(array : Array<Int>?, operation : (Array<Int>?) -> Double?) -> Double? {
    guard let numArray = array else {
        print("Must pass an array")
        return nil
    }
    
    return operation(numArray)
}

// Points
func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

//func mathOperation(first : (Int, Int), second : (Int, Int), op : ((Int, Int), (Int, Int)) -> (Int, Int)) -> (Int, Int) {
//    return op(first, second)
//}

// Dictionary points
func add(p1 : Dictionary<String, Int>?, p2 : Dictionary<String, Int>?) -> Dictionary<String, Int>? {
    return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
}

func subtract(p1 : Dictionary<String, Int>?, p2 : Dictionary<String, Int>?) -> Dictionary<String, Int>? {
    return ["x": p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
}

func add(p1 : Dictionary<String, Double>?, p2 : Dictionary<String, Double>?) -> Dictionary<String, Double>? {
    guard p1?["x"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p1?["y"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p2?["x"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p2?["y"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
}

func subtract(p1 : Dictionary<String, Double>?, p2 : Dictionary<String, Double>?) -> Dictionary<String, Double>? {
    guard p1?["x"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p1?["y"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p2?["x"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    guard p2?["y"] != nil else {
        print("Must pass valid dictionary")
        return nil
    }
    
    return ["x": p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
}

//func mathDict(first : Dictionary<String, Double>, second : Dictionary<String, Double>, op : (Dictionary<String, Double>, Dictionary<String, Double>) -> Dictionary<String, Double>) -> Dictionary<String, Double> {
//	return op(first, second)
//}
