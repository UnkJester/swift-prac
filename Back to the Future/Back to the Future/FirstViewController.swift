//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Jesse on 8/14/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Tick()
        let year = Utilities().getCurrentYear()
        
        label1.text = Utilities().getLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().getLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().getLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().getLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }

    func Tick() {
        timeLabel.text = Utilities().getCurrentTime()
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
        }) { (true) in
            // self.view.alpha = 1.0;
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn, animations: {
                self.view.alpha = 1.0
            }, completion: { (true) in
            })
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

