//
//  InExPrincipleViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/21/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class InExPrincipleViewController: UIViewController {

    
    @IBOutlet weak var lessThan: UITextField!
    @IBOutlet weak var div1: UITextField!
    @IBOutlet weak var div2: UITextField!
    @IBOutlet weak var div3: UITextField!
    @IBOutlet weak var calcButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lessThan.becomeFirstResponder()
        
        calcButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        
        resultLabel.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        calcButton.layer.cornerRadius = 8;
        resultLabel.layer.cornerRadius = 8;
        resultLabel.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateNumber(_ sender: Any) {
        
        let mainNo = Int(lessThan.text!)
        let num1 = Int(div1.text!)
        let num2 = Int(div2.text!)
        let num3 = Int(div3.text!)
        
        if(num1 != nil && num2 == nil && num3 == nil) {
            print("1 one case")
            resultLabel.text! = "\(Int(mainNo! / num1!))"
            
        }
            else if (num1 != nil && num2 != nil && num3 == nil) {
                //solve 2 case
                print("Case with 2")
            resultLabel.text! = "\(Int(mainNo! / num1!) + Int(mainNo! / num2!) - Int(mainNo! / (num1! * num2!)))"
            }
            else {
                //solve the one with all 3 given case
                print("Case with all 3")
            resultLabel.text! = "\(Int(mainNo! / num1!) + Int(mainNo! / num2!) + Int(mainNo! / num3!) - Int(mainNo! / (num1! * num2!)) - Int(mainNo! / (num2! * num3!)) - Int(mainNo! / (num1! * num3!)) + Int(mainNo! / (num1! * num2! * num3!)))"
            }
        }
}
