//
//  ViewController.swift
//  Astro Torch
//
//  Created by Jesse on 7/24/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func myButtonClicked(_ sender: UIButton) {
        if (self.view.backgroundColor == UIColor.blue()) {
            self.view.backgroundColor = UIColor.red()
        } else {
            self.view.backgroundColor = UIColor.blue()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

