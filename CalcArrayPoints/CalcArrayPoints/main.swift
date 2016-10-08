//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/6/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import Foundation

// Build a calculator
func add(first : Int, second : Int) -> Double {
    return Double(first + second)
}

func subtract(first : Int, second : Int) -> Double {
    return Double(first - second)
}

func multiply(first : Int, second : Int) -> Double {
    return Double(first * second)
}

func divide(first : Int, second : Int) -> Double {
 	return Double(first / second)   
}

func math(first : Int, second : Int, op : (Int, Int) -> Double) -> Double {
    return op(first, second)
}

// Array fun
func addArray(nums : Array<Int>) -> Int {
	var result : Int = 0
	for num in nums {
		result += num
	}

	return result
}

func multiplyArray(nums : Array<Int>) -> Int {
	var result : Int = 0
	for num in nums {
		result *= num
	}

	return result
}

func count(nums : Array<Int>) -> Double {
	return nums.count	
}

func avg(nums : Array<Int>) -> Double {
	var total : Double = 0
	for num in nums {
		total += num
	}	

	return Double(total/nums.count)
}

func mathArray(numArray : Array<Int>, op : (Array<Int>) -> Int) -> Double {
	return op(numArray)
}

// Points
func addPoint(first :(Int, Int), second(Int, Int)) -> (Int, Int) {
	return(first.0 + second.0, first.1 + second.1)
}

func subtractPoint(first : (Int, Int), second(Int, Int)) -> (Int, Int) {
	return (first.0 - second.0, first.1 - second.1)	
}

func addDict(first : Dictionary<Double, Double>, second : Dictionary<Double, Double) -> Dictionary<Double, Double> {
	return ("x" : first.x + second.x, "y" : first.y + second.y)
}

func subtractDict(first : Dictionary<Double, Double>, second : Dictionary<Double, Double) -> Dictionary<Double, Double> {
	return ("x" : first.x - second.x, "y" : first.y - second.y)
}

func mathDict(first : Dictionary<Double, Double>, second : Dictionary<Double, Double>, op : (Dictionary<Double, Double>) -> Double) -> Dictionary<Double, Double> {
	return op(first, second)
}