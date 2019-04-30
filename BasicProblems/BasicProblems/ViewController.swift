//
//  ViewController.swift
//  BasicProblems
//
//  Created by Oliver Narramore on 30/04/2019.
//  Copyright © 2019 Oliver Narramore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        recursiveFibonnaci(10)
//        iterativeFibonacci(10)
//        optimisedFibonacci(10)

    }

    func recursiveFibonnaci(_ n: Int) -> Int {
        guard n > 1 else { return n }
        let num = recursiveFibonnaci(n-1) + recursiveFibonnaci(n-2)
        print("Fibonacci \(n) = \(num)")
        return num
    }

    func iterativeFibonacci(_ n: Int) -> Int {
        var fibonacciArray: [Int] = [1, 1]

        for i in 2..<n {
            fibonacciArray.append(fibonacciArray[i-1] + fibonacciArray[i-2])
            print(fibonacciArray)
        }

        return fibonacciArray.last!
    }

    func optimisedFibonacci(_ n: Int) -> Int {
        var x = 1
        var y = 1
        guard n > 1 else { return x }

        for _ in 2..<n {
            (x,y) = (x+y, x)
            print(x,y)
        }
        return x
    }








}

