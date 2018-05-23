//
//  PrimeViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/12/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class PrimeViewController: UIViewController {

    @IBOutlet var primeTextField: UITextField!
    @IBOutlet var primeLabel: UILabel!
    @IBOutlet weak var primeButton: UIButton!
    @IBOutlet weak var factorsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.primeTextField.becomeFirstResponder()
        
        primeLabel.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        primeButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)

        primeButton.layer.cornerRadius = 8;
        primeLabel.layer.cornerRadius = 8;
        primeLabel.layer.masksToBounds = true;
        
        factorsLabel.layer.cornerRadius = 8;
        factorsLabel.layer.masksToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func isPrime(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
    
    
    @IBAction func primeButton(_ sender: Any) {
        
        let n = Int(primeTextField.text!)
        var factorNumber = 1;
        var factorss: [Int] = []
        
        print(isPrime(n!))
        if(String(isPrime(n!)) == "false") {
            primeLabel.text! = "Not Prime"
            
            while(factorNumber <= n!){
                if(n! % factorNumber == 0){
                    factorss.append(factorNumber)
                }
                factorNumber += 1
            }
            print(factorss)
            factorsLabel.text! = "\(factorss)"
        }
        else {
            primeLabel.text! = "Prime"
            factorsLabel.text! = ""
        }

    }

}
