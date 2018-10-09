//
//  main.swift
//  strings
//
//  Created by Nathalie  on 10/9/18.
//  Copyright © 2018 Nathalie . All rights reserved.
//

import Foundation
//String is a collection of characters

//concatenation
let firstName = "John"
let lastName = "Appleseed"
//ex: use a variable to concatenate first name and second name
let fullName = firstName + " " + lastName
print("the person's full name is \(fullName)")

//String interpolation
let year = 2018
// ex: use string interpolation to print out the year 2018
print("the current year is \(year)")

//Initialization ; to set a default value
var date = "october 9"
print(date)

//string formatting
let someString = String(format: "%.2f", 10.345)
print("using string formatting to print 2 decimal places \(someString)")

//test for empty string
let emptyString = ""

//using the ternary operator ?:
emptyString.isEmpty ? print("is empty") : print("NOT empty")

//alternate method using if else
if emptyString.isEmpty {
    print("is empty")
} else {
    print("NOT empty")
}

//comparing strings
let string1 = "Pursuit"
let string2 = "C4Q"
string1 == string2 ? print("you're in both cohorts") : print("pursuit to the dream")

//string mutability
let homePlanet = "earth" //inmutable
var codingExperience = 0 //mutable
codingExperience = 10

//castings
let stringExperience = String(codingExperience)
print("I have \(stringExperience) experience in coding")

//value type and reference ; with value types everyone has their own copy, with reference everyone shares one copy
let movie = "Toy Story"
var nextMovie = movie
nextMovie += " 2"
print("movie is \(movie) and nextMovie s \(nextMovie)") // if nextMovie was a (class type) it would alter movie's value

//iterating through a string
let iOS = "iOS is awesome!"
for letter in iOS {
    print(letter, terminator:"|")//terminator causes the characters to print out on one line and gets rid of a new line
}

print("") //this will allow line 75 to print on a separate line than line 68

//count characters in the string
//count is a property on a collection type - counts number of items in collection
print("there are \(iOS.count) characters in the string")

//drop the last character in a string
print("dropping the last character of \(iOS.dropLast())")

//reversing strings
var greeting = "hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

//check if a string is a palindrome (when a word spelled forwards and backwards is the same (i.e racecar))
let testPalindromeString = "Racecar".lowercased()
let isPalindrome = String(testPalindromeString.reversed())
if testPalindromeString == isPalindrome {
    print("is a palindrome")
} else {
    print("not a palindrome")
}

//comparing unicode scalar vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")

//UNICODE IS THE CODE BEHIND EVERY CHARACTER THAT WE USE.

// U+1F40D is snake
let snake = "\u{1F40D}" //unicode scalar
for _ in 0...10 {
    print(snake, terminator:"")
}
