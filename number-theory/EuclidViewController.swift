//
//  EuclidViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/12/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class EuclidViewController: UIViewController {

    @IBOutlet var Numerator: UITextField!
    @IBOutlet var Denominator: UITextField!
    @IBOutlet weak var euclidButton: UIButton!
    @IBOutlet var euclidResult: UILabel!
    @IBOutlet weak var formatViewLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Numerator.becomeFirstResponder()
        
        
        Numerator.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        Denominator.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        euclidButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        
        formatViewLabel.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1.0)
        
        euclidResult.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        euclidButton.layer.cornerRadius = 8;
        euclidResult.layer.cornerRadius = 8;
        euclidResult.layer.masksToBounds = true;
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calcEuclid(_ sender: Any) {
        
        let num = Int(Numerator.text!)
        let den = Int(Denominator.text!)
        if (den == 0 ) {
            euclidResult.text! = "Denominator cannot be zero. Please try again"
            euclidResult.textColor = UIColor.init(red: 1, green: 0, blue: 0, alpha: 1)
        }
        else {
            var quotient =  (num)! / (den!)
            var remainder = (num!) % (den!)
            if(remainder < 0) {
                quotient -= 1
                remainder = num! - quotient*den!
            }
        
            let result =  "\(quotient) * \(den!) + \(remainder)"
            euclidResult.text! = String(result)
            formatViewLabel.text! = "Answer of the form q * k + r"
            }
    }
}
