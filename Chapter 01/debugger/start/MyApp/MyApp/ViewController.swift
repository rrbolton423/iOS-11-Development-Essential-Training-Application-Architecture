//
//  ViewController.swift
//  MyApp
//
//  Created by Todd Perkins on 9/25/17.
//  Copyright © 2017 Todd Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tRight: UITextField!
    @IBOutlet weak var tLeft: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func doMath(_ sender: Any) {
        resultLabel.text = "\(getResult())"
    }
    
    func getResult() -> Float {
        //let str:String? = "0"
        guard let t1 = tLeft.text else {
            return 0
        }
        guard let t2 = tRight.text else {
            return 0
        }
        guard let num1:Float = Float(t1) else {
            return 0
        }
        guard let num2:Float = Float(t2) else {
            return 0
        }
        return num1 / num2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

