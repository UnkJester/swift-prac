//
//  ViewController.swift
//  Calculator
//
//  Created by Jesse on 8/2/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentOperation: Operator = Operator.nothing
    var calcState: CalculationState = CalculationState.newNumStarted
    var enabledButton: UIButton! = nil
    var firstValue: String = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Button Actions
    @IBAction func numberClicked(_ sender: UIButton) {
        //print(String(sender.tag))
        updateDisplay (newNumber: String(sender.tag))
    }
    @IBAction func operatorClicked(_ sender: UIButton) {
        if calcState == CalculationState.enteringNum {
            calcState = CalculationState.newNumStarted
            if let num = resultLabel.text {
                if num != "" {
                    firstValue = num
                    // resultLabel.text = "" // In demo, but I won't use
                }
            }
            switch sender.tag {
            case 10:
                currentOperation = Operator.add
            case 11:
                currentOperation = Operator.subtract
            case 12:
                currentOperation = Operator.multiply
            case 13:
                currentOperation = Operator.divide
            default:
                return
            }
            setEnabledButton(button:sender)
        }
    }
    @IBAction func equalsClicked(_ sender: UIButton) {
        calculate()
        
    }
    func setEnabledButton(button: UIButton) {
        setDisabledButton()
        enabledButton = button
        if enabledButton != nil {
            enabledButton.backgroundColor = UIColor.yellow()
        }
    }
    func setDisabledButton() {
        if enabledButton != nil {
            enabledButton.backgroundColor = UIColor.clear()
            enabledButton = nil
        }
    }
    
    func calculate() {
        // TODO - allow continued operation of the previous operation
        if (firstValue.isEmpty) {
            return
        }
        
        var result = ""
        
        if currentOperation == Operator.multiply {
            result = String (Double(firstValue)! * Double(resultLabel.text!)!)
            // result = "\(Double(firstValue)! * Double(resultLabel.text!))" // this also works
        }
        else if currentOperation == Operator.divide {
            result = String(Double(firstValue)! / Double(resultLabel.text!)!)
        }
        else if currentOperation == Operator.add {
            result = String(Double(firstValue)! + Double(resultLabel.text!)!)
        }
        else if currentOperation == Operator.subtract {
            result = String(Double(firstValue)! - Double(resultLabel.text!)!)
        }
        
        resultLabel.text = result
        calcState = CalculationState.newNumStarted
        firstValue = ""
        setDisabledButton()
    }
    func updateDisplay(newNumber: String) {
        if calcState == CalculationState.newNumStarted {
 /*           if let num = resultLabel.text {
                if num != "" {
                    firstValue = num
                }
            } */
            calcState = CalculationState.enteringNum
            resultLabel.text = newNumber
        } else if calcState == CalculationState.enteringNum {
            resultLabel.text! +=  newNumber
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

