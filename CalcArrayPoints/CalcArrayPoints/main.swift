//
//  main.swift
//  CalcArrayPoints
//
//  Created by Elizabeth on 10/6/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import Foundation

// Build a calculator
func add(left : Int, right : Int) -> Double {
    return Double(left) + Double(right)
}

func subtract(left : Int, right : Int) -> Double {
    return Double(left) - Double(right)
}

func multiply(left : Int, right : Int) -> Double {
    return Double(left) * Double(right)
}

func divide(left : Int, right : Int) -> Double {
 	return Double(left) / Double(right)
}

func mathOperation(left : Int?, right : Int?, operation : (Int, Int) -> Double) -> Double {
    guard let l = left else {
        print("Must enter valid integers")
        return 0.0
    }
    
    guard let r = right else {
        print("Must enter valid integers")
        return 0.0
    }
    
    return operation(l, r)
}

// Array fun
func add(array : Array<Int>) -> Double {
	var result : Int = 0
	for num in array {
		result += num
	}

	return Double(result)
}

func multiply(array : Array<Int>) -> Double {
	var result : Int = 1
    if reduce(array : array, operation : count) == 0 {
        result = 0
    }
    
	for num in array {
		result *= num
	}

	return Double(result)
}

func average(array : Array<Int>) -> Double {
    let total = add(array: array)
    
    let totalNum = array.count
    if totalNum == 0 {
        print("Array had no ints")
        return 0.0
    }
    
    return total/Double(totalNum)
}

func count(array : Array<Int>) -> Double {
	return Double(array.count)
}

func reduce(array : Array<Int>?, operation : (Array<Int>) -> Double) -> Double {
    guard let numArray = array else {
        print("Must pass an array")
        return 0.0
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
        return ["x": 0, "y": 0]
    }
    
    guard p1?["y"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    guard p2?["x"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    guard p2?["y"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
}

func subtract(p1 : Dictionary<String, Double>?, p2 : Dictionary<String, Double>?) -> Dictionary<String, Double>? {
    guard p1?["x"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    guard p1?["y"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    guard p2?["x"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    guard p2?["y"] != nil else {
        print("Must pass valid dictionary")
        return ["x": 0, "y": 0]
    }
    
    return ["x": p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
}

//func mathDict(first : Dictionary<String, Double>, second : Dictionary<String, Double>, op : (Dictionary<String, Double>, Dictionary<String, Double>) -> Dictionary<String, Double>) -> Dictionary<String, Double> {
//	return op(first, second)
//}
