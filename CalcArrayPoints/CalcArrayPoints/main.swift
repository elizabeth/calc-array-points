//
//  main.swift
//  CalcArrayPoints
//
//  Created by Elizabeth on 10/6/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import Foundation

// Build a calculator
func add(first : Int, second : Int) -> Double {
    return Double(first) + Double(second)
}

func subtract(first : Int, second : Int) -> Double {
    return Double(first) - Double(second)
}

func multiply(first : Int, second : Int) -> Double {
    return Double(first) * Double(second)
}

func divide(first : Int, second : Int) -> Double {
 	return Double(first) / Double(second)
}

func math(first : Int?, second : Int?, op : (Int, Int) -> Double) -> Double {
    guard let f = first else {
        print("Must enter valid integers")
        return 0.0
    }
    
    guard let s = second else {
        print("Must enter valid integers")
        return 0.0
    }
    
    return op(f, s)
}

// Array fun
func addArray(nums : Array<Int>) -> Double {
	var result : Int = 0
	for num in nums {
		result += num
	}

	return Double(result)
}

func multiplyArray(nums : Array<Int>) -> Double {
	var result : Int = 1
    if nums.count == 0 {
        result = 0
    }
    
	for num in nums {
		result *= num
	}

	return Double(result)
}

func count(nums : Array<Int>) -> Double {
	return Double(nums.count)
}

func avg(nums : Array<Int>) -> Double {
	let total = addArray(nums: nums)
    
    let totalNum = nums.count
    if totalNum == 0 {
        print("Array had no ints")
        return 0.0
    }

	return total/Double(totalNum)
}

func mathArray(numArray : Array<Int>?, op : (Array<Int>) -> Double) -> Double {
    guard let array = numArray else {
        print("Must pass an array")
        return 0.0
    }
    
    return op(array)
}

// Points
func addPoint(first : (Int, Int), second : (Int, Int)) -> (Int, Int) {
	return(first.0 + second.0, first.1 + second.1)
}

func subtractPoint(first : (Int, Int), second : (Int, Int)) -> (Int, Int) {
	return (first.0 - second.0, first.1 - second.1)	
}

//func mathPoint(first : (Int, Int), second : (Int, Int), op : ((Int, Int), (Int, Int)) -> (Int, Int)) -> (Int, Int) {
//    return op(first, second)
//}

func addDict(first : Dictionary<String, Double>, second : Dictionary<String, Double>) -> Dictionary<String, Double> {
	return ["x" : first["x"]! + second["x"]!, "y" : first["y"]! + second["y"]!]
}

func subtractDict(first : Dictionary<String, Double>, second : Dictionary<String, Double>) -> Dictionary<String, Double> {
	return ["x": first["x"]! - second["x"]!, "y" : first["y"]! - second["y"]!]
}

//func mathDict(first : Dictionary<String, Double>, second : Dictionary<String, Double>, op : (Dictionary<String, Double>, Dictionary<String, Double>) -> Dictionary<String, Double>) -> Dictionary<String, Double> {
//	return op(first, second)
//}
