//
//  GCDViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/12/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class GCDViewController: UIViewController {

    @IBOutlet var gcdNum1: UITextField!
    @IBOutlet var gcdNum2: UITextField!
    @IBOutlet var gcdNum3: UITextField?
    @IBOutlet weak var gcdButton: UIButton!
    
    @IBOutlet var gcdResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gcdNum1.becomeFirstResponder()

        gcdButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        
        gcdResult.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        gcdButton.layer.cornerRadius = 8;
        gcdResult.layer.cornerRadius = 8;
        gcdResult.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    @IBAction func gcdCalc(_ sender: Any) {
        
        let gcd1 = Int(gcdNum1.text!)
        let gcd2 = Int(gcdNum2.text!)
        let gcd3 = Int((gcdNum3?.text!)!)
        
        
        let a = gcd1
        let b = gcd2
        let c = gcd3
        
        
        if(gcd3 == nil) {
            print(gcd(a:a!, b:b!))
            gcdResult.text! = "\(gcd(a:a!, b:b!))"
        }
        else {
            let a1 = gcd(a:a!, b:b!)
            let a2 = gcd(a:b!, b:c!)
            let a3 = gcd(a: a1, b: a2)
            print(a3)
            gcdResult.text! = "\(gcd(a:a1, b:a2))"
            
        }}}
