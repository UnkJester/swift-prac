//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Jesse on 8/1/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var conversionCount: Int = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var conversionLabel: UILabel!
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func convertClicked(_ sender: AnyObject) {
        
        // Tries to create variable from function or variable, 
        //  and only continues if successful
        if let result = tempEntry.text {
            if (result == "") {
                return
            }
            else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    conversionCount += 1;
                    conversionLabel.text = String(conversionCount) + " conversions"
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

