//
//  ViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/12/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var euclidButton: UIButton!
    @IBOutlet weak var primeButton: UIButton!
    @IBOutlet weak var IEButton: UIButton!
    @IBOutlet weak var gcdButton: UIButton!
    @IBOutlet weak var lcmButton: UIButton!
    @IBOutlet weak var leapButton: UIButton!
    @IBOutlet weak var dayweekButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        euclidButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        euclidButton.layer.cornerRadius = 8;
        
        
        primeButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        //primeButton.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        primeButton.layer.cornerRadius = 8;
        
        IEButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        IEButton.layer.cornerRadius = 8;
        IEButton.titleLabel!.lineBreakMode = .byWordWrapping
        IEButton.titleLabel!.textAlignment = .center
        IEButton.setTitle("Inclusion\nExclusion\nPrinciple", for: .normal)
        
        gcdButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        //gcdButton.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        gcdButton.layer.cornerRadius = 8;
        
        lcmButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        //lcmButton.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        lcmButton.layer.cornerRadius = 8;
        
        leapButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        leapButton.layer.cornerRadius = 8;
        leapButton.titleLabel!.lineBreakMode = .byWordWrapping
        leapButton.titleLabel!.textAlignment = .center
        leapButton.setTitle("Number of\nLeap Years", for: .normal)
        
        dayweekButton.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        dayweekButton.layer.cornerRadius = 8;
        dayweekButton.titleLabel!.lineBreakMode = .byWordWrapping
        dayweekButton.titleLabel!.textAlignment = .center
        dayweekButton.setTitle("Day of\nthe week", for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

