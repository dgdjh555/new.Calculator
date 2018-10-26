//
//  ViewController.swift
//  Calculator
//
//  Created by nico_d on 2018/9/27.
//  Copyright © 2018年 nico_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag = 0
    var Num = 0.00
    var sum_d = 0.00
    var sum_i = 0
    var dot_use = false;
    @IBOutlet weak var Calculator: UITextField!
    @IBOutlet weak var Calculator2: UITextField!
    @IBOutlet weak var Calculator3: UITextField!
    
    
    @IBAction func Num1(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text = Calculator.text!+"1"
    }
    @IBAction func Num2(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"2"
    }
    @IBAction func Num3(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"3"
    }
    @IBAction func Num4(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"4"
    }
    @IBAction func Num5(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"5"
    }
    @IBAction func Num6(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"6"
    }
    @IBAction func Num7(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"7"
    }
    @IBAction func Num8(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"8"
    }
    @IBAction func Num9(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"9"
    }
    @IBAction func Num0(_ sender: Any) {
        if flag == 0 && sum_d != 0{
            Calculator.text! = ""
            sum_d = 0.0
        }
        Calculator.text=Calculator.text!+"0"
    }
    @IBAction func dot(_ sender: Any) {
        if dot_use == false{
            Calculator.text=Calculator.text!+"."
            dot_use = !dot_use
        }
    }
    
    
    @IBAction func Divide(_ sender: Any) {
        Calculator3.text! = " / "
        flag = 1
        dot_use = false
        Num = Double(Calculator.text!)!
        Calculator2.text! += Calculator.text!
        Calculator.text! = ""
    }
    @IBAction func Sum(_ sender: Any) {
        Calculator3.text! = " + "
        flag = 2
        dot_use = false
        Num = Double(Calculator.text!)!
        Calculator2.text! = Calculator.text!

        Calculator.text! = ""
    }
    @IBAction func Subtract(_ sender: Any) {
        Calculator3.text! = " - "
        flag = 3
        dot_use = false
        Num = Double(Calculator.text!)!
        Calculator2.text! += Calculator.text!
        Calculator.text! = ""
    }
    @IBAction func Ride(_ sender: Any) {
        Calculator3.text! = " * "
        flag = 4
        dot_use = false
        Num = Double(Calculator.text!)!
        Calculator2.text! += Calculator.text!
        Calculator.text! = ""
    }
    
    
    @IBAction func Equal(_ sender: Any) {
        print(Num)
        print(Double(Calculator.text!)!)
        if flag == 1{
            sum_d = Num / Double(Calculator.text!)!
            Calculator.text! = "\(sum_d)"
            flag = 0
        }
        else if flag == 2{
            sum_d = Num + Double(Calculator.text!)!
            Calculator.text! = "\(sum_d)"
            flag = 0
        }
        else if flag == 3{
            sum_d = Num - Double(Calculator.text!)!
            Calculator.text! = "\(sum_d)"
            flag = 0
        }
        else if flag == 4{
            sum_d = Num * Double(Calculator.text!)!
            Calculator.text! = "\(sum_d)"
            flag = 0
        }
        else{
            Calculator.text! += "";
        }
    }
    @IBAction func Clear(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Calculator.text! = ""
        flag = 0
        Num = 0.0
        sum_d = 0.0
        sum_i = 0
    }


}

