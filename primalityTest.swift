//
//  primalityTest.swift
//  
//
//  Created by Jose on 7/7/19.
//

import Foundation

func isPrime(_ number: Int) -> Bool
{
	if number == 1
	{ return false }

	if number == 2
	{ return true }

	if number%2 == 0
	{ return false }

	let root = sqrt(Float(number))
	let divisors: StrideThrough<Int> = stride(from: 3, through: Int(trunc(root)), by: 2)

	var notReturned = true
	for divisor in divisors
	{
		if number%divisor == 0
		{
			return false
			notReturned = false
			break
		}
	}
	if notReturned
	{ return true }
}
