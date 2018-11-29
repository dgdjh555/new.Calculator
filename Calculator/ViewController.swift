//
//  ViewController.swift
//  Calculator
//
//  Created by nico_d on 2018/9/27.
//  Copyright © 2018年 nico_d. All rights reserved.
//
public struct Stack<T> {
    fileprivate var array = [T]()
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    public mutating func push(_ element: T) {
        array.append(element)
    }
    public mutating func pop() -> T? {
        return array.popLast()
    }
    public var top: T? {
        return array.last
    }
}
import UIKit

class ViewController: UIViewController {
    
    var NumStack = Stack<Double>()
    var CharStack = Stack<String>()
    
    @IBOutlet weak var Calculator: UITextField!
    @IBOutlet weak var Calculator2: UITextField!
    @IBAction func Num1(_ sender: Any) {
        Calculator.text = Calculator.text!+"1"
    }
    @IBAction func Num2(_ sender: Any) {
        Calculator.text=Calculator.text!+"2"
    }
    @IBAction func Num3(_ sender: Any) {
        Calculator.text=Calculator.text!+"3"
    }
    @IBAction func Num4(_ sender: Any) {
        Calculator.text=Calculator.text!+"4"
    }
    @IBAction func Num5(_ sender: Any) {
        Calculator.text=Calculator.text!+"5"
    }
    @IBAction func Num6(_ sender: Any) {
        Calculator.text=Calculator.text!+"6"
    }
    @IBAction func Num7(_ sender: Any) {
        Calculator.text=Calculator.text!+"7"
    }
    @IBAction func Num8(_ sender: Any) {
        Calculator.text=Calculator.text!+"8"
    }
    @IBAction func Num9(_ sender: Any) {
        Calculator.text=Calculator.text!+"9"
    }
    @IBAction func Num0(_ sender: Any) {
        Calculator.text=Calculator.text!+"0"
    }
    @IBAction func dot(_ sender: Any) {
        
    }
    
    
    @IBAction func Divide(_ sender: Any) {
        Calculator2.text = Calculator2.text! + Calculator.text!
        NumStack.push(Double(Calculator.text!)!)
        CharStack.push("/")
        Calculator.text! = ""
    }
    @IBAction func Sum(_ sender: Any) {
        Calculator2.text = Calculator2.text! + Calculator.text!
        NumStack.push(Double(Calculator.text!)!)
    }
    @IBAction func Subtract(_ sender: Any) {
        Calculator2.text = Calculator2.text! + Calculator.text!
        NumStack.push(Double(Calculator.text!)!)
    }
    @IBAction func Ride(_ sender: Any) {
        Calculator2.text = Calculator2.text! + Calculator.text!
        NumStack.push(Double(Calculator.text!)!)
        CharStack.push("*")
        Calculator.text! = ""
    }
    
    
    @IBAction func Equal(_ sender: Any) {
        
    }
    @IBAction func Clear(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Calculator.text! = ""
    }
}

