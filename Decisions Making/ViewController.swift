//
//  ViewController.swift
//  Decisions Making
//
//  Created by Enrique Barragán on 9/20/16.
//  Copyright © 2016 Enrique Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finalChoice: UILabel!
    @IBOutlet weak var choice1: UITextField!
    @IBOutlet weak var choice2: UITextField!
    @IBOutlet weak var button: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalChoice.text = "You should..."
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonTouched(_ sender: AnyObject) {
        if let choice1 = choice1.text, let choice2 = choice2.text {
            var decisions = DecisionModel()
            finalChoice.text = decisions.decide(choice1: choice1, choice2: choice2)
        }
        
    }

}

