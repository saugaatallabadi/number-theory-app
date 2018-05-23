//
//  LCMViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/12/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class LCMViewController: UIViewController {

    @IBOutlet var lcmNum1: UITextField!
    @IBOutlet var lcmNum2: UITextField!
    @IBOutlet var lcmNum3: UITextField?
    @IBOutlet weak var lcmButton: UIButton!
    
    @IBOutlet var lcmResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lcmNum1.becomeFirstResponder()
        lcmButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        lcmResult.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        lcmButton.layer.cornerRadius = 8;
        lcmResult.layer.cornerRadius = 8;
        lcmResult.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gcd(a:Int, b:Int) -> Int {
        if a == b {
            return a
        }
        else {
            if a > b {
                return gcd(a:a-b,b:b)
            }
            else {
                return gcd(a:a,b:b-a)
            }}}
    
    @IBAction func lcmCalc(_ sender: Any) {
        
        let lcm1 = Int(lcmNum1.text!)
        let lcm2 = Int(lcmNum2.text!)
        let lcm3 = Int((lcmNum3?.text!)!)
        
        let a = lcm1
        let b = lcm2
        let c = lcm3
        
        
        if(lcm3 == nil) {
            print(gcd(a:a!, b:b!))
            lcmResult.text! = "\((a!*b!) / gcd(a:a!, b:b!))"
        }
        else {
            let a1 = gcd(a:a!, b:b!)
            let a2 = gcd(a:b!, b:c!)
            let a3 = gcd(a: a1, b: a2)
            print(a3)
            let lcmOfLastTwo = (b!*c!) / gcd(a:a2, b:a3)
            let totalLCM = (a!*lcmOfLastTwo) / gcd(a: a!, b: lcmOfLastTwo)
            print(totalLCM)
            lcmResult.text! = "\(totalLCM)"
        }}}
