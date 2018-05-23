//
//  LeapYearViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/21/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class LeapYearViewController: UIViewController {

    @IBOutlet weak var year1: UITextField!
    @IBOutlet weak var year2: UITextField!
    @IBOutlet weak var calcButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.year1.becomeFirstResponder()
        print("HelloWorld")
        calcButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        
        resultLabel.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        calcButton.layer.cornerRadius = 8;
        resultLabel.layer.cornerRadius = 8;
        resultLabel.layer.masksToBounds = true;


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func noOfYears(_ sender: Any) {
        
        let x = Int(year1.text!)
        let y = Int(year2.text!)
        

        resultLabel.text! = "\(Int(y!/4) - Int(x!/4) + Int(y!/400) - Int(x!/400) + Int(x!/100) - Int(y!/100))"
        
        
    }

}
