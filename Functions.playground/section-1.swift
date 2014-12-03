// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Defining and Calling Functions

/*
When you define a function, you can optionally define one or more named, typed values that the function takes as input (known as parameters), and/or a type of value that the function will pass back as output when it is done (known as its return type).
*/

func sayHello(personName : String) -> String
{
    let getting = "Hello" + personName + "!"
    return getting
}

sayHello("Hey")


// Function Parameters and Return Values

// Multiple Input Parameters

func halfRangeLength( start : Int, end: Int) -> Int
{
    return end - start
}

halfRangeLength(1, 10)

// Functions Without Parameters

func sayHelloWorld() -> String
{
    return "Hello World"
}

sayHelloWorld()


// Functions Without Return Values

func sayGood(personName : String)
{
    println("Good \(personName)")
}

sayGood("Bye")

// The return value of a function can be ignored when it is called

func printandCount(StringToPrint : String) -> Int
{
    println(StringToPrint)
    return countElements(StringToPrint)
}

printandCount("Hey")


func printwithoutCounting(stringToPoint : String)
{
    printandCount(stringToPoint)

}

printwithoutCounting("Hello")

// Functions with Multiple Return Values


func minMax(arry:[Int]) -> (min: Int, max: Int)
{
    var currentMin = arry[0]
    var currentMax = arry[0]
    
    for value in arry[1..<arry.count]
    {
        if value < currentMin
        {
            currentMin = value
        }
        else if value > currentMax
        {
            currentMax = value
        }
       
    }
     return (currentMin, currentMax)
    
}

let bounds = minMax([8,-6,2,109,3,71])
println("min is \(bounds.min) and max is \(bounds.max)")


// External Parameter Names

func someFunction(externalParameterName localParameterName : Int)
{
    // function body goes here, and can use localParameterName
    // to refer to the argument value for that parameter
}


func join(s1: String, s2: String, joiner: String) -> String
{
    return s1 + joiner + s2
}


join("hello", "World", ",")

func joining(string s1: String, toString s2: String, withJoiner joiner: String) -> String
{
    return s1 + joiner + s2
}


joining(string: "Hey", toString: "World", withJoiner: ",")


// Shorthand External Parameter Names


func containsCharacter(#string : String, #characterToFind: Character
) -> Bool
{
    for character in string
    {
        if character == characterToFind
        {
            return true
        }
    }
    return false
}



let containsVee = containsCharacter(string: "Rahul", characterToFind: "h")



// Default Parameter Values

/*
You can define a default value for any parameter as part of a function’s definition. If a default value is defined, you can omit that parameter when calling the function.

*/

func joiner(sting s1 : String, toststring s2: String, withjoin join :  String = " ") -> String
{
    return s1 + join + s2
}

joiner(sting: "Hello", toststring: "World", withjoin: ",")

joiner(sting: "Hello", toststring: "World")


// External Names for Parameters with Default Values


func joins(s1: String, s2: String, joiner: String = " ") -> String
{
    return s1 + joiner + s2
}

joins("Hello", "World", joiner: "-")


// In-Out Parameters


func swapTwoInts(inout a : Int, inout b : Int)
{
    let temp = a
    a = b
    b = temp
}

var someInt = 5
var anotherInt = 100
swapTwoInts(&someInt, &anotherInt)

println("SomeInt \(someInt) and anotherInt \(anotherInt)")



// Function Types


func addTwoInts(a: Int, b: Int) -> Int
{
    return a + b
}


func multiply(a: Int, b: Int) -> Int
{
    return a * b
}

// Using Function Types

var mathfunction: (Int, Int) -> Int = addTwoInts


mathfunction(5,6)

mathfunction = multiply

mathfunction(2,3)


// Function Types as Parameter Types

func printResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int)
{
    println("Result : \(mathFunction(a,b))")
}

printResult(addTwoInts, 3, 4)

printResult(multiply, 3, 4)






