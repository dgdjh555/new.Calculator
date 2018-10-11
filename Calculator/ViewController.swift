//
//  ViewController.swift
//  Calculator
//
//  Created by nico_d on 2018/9/27.
//  Copyright © 2018年 nico_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag = 0;
    var Num = 0;
    var sum = 0;
    @IBOutlet weak var Calculator: UITextField!
    
    
    @IBAction func Num1(_ sender: Any) {
        Calculator.text=Calculator.text!+"1"
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
    
    
    @IBAction func Divide(_ sender: Any) {
        flag = 1;
        Num = Int(Calculator.text!)!;
    }
    @IBAction func Sum(_ sender: Any) {
        flag = 2;
        Num = Int(Calculator.text!)!;
    }
    @IBAction func Subtract(_ sender: Any) {
        flag = 3;
        Num = Int(Calculator.text!)!;
    }
    @IBAction func Ride(_ sender: Any) {
        flag = 4;
        Num = Int(Calculator.text!)!;
    }
    @IBAction func Equal(_ sender: Any) {
        if flag == 1{
            sum = Num / Int(Calculator.text!)!
            Calculator.text! = "\(sum)"
        }
        else if flag == 2{
            sum = Num + Int(Calculator.text!)!
            Calculator.text! = "\(sum)"
        }
        else if flag == 3{
            sum = Num - Int(Calculator.text!)!
            Calculator.text! = "\(sum)"
        }
        else if flag == 4{
            sum = Num * Int(Calculator.text!)!
            Calculator.text! = "\(sum)"
        }
    }
    @IBAction func Clear(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

