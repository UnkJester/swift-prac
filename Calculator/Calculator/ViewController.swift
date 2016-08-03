//
//  ViewController.swift
//  Calculator
//
//  Created by Jesse on 8/2/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Button Actions
    @IBAction func numberClicked(_ sender: UIButton) {
        print(String(sender.tag))
    }
    @IBAction func operatorClicked(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            print("add")
        case 11:
            print("minus")
        case 12:
            print("times")
        case 13:
            print("divide")
        default:
            return
        }
    }
    @IBAction func equalsClicked(_ sender: UIButton) {
        print("equals")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

