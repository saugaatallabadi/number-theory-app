//
//  FindingDayViewController.swift
//  Number Theory
//
//  Created by Saugaat Allabadi on 3/21/17.
//  Copyright © 2017 Saugaat Inc. All rights reserved.
//

import UIKit

class FindingDayViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var typeDate: UITextField!
    @IBOutlet weak var findingDay: UIButton!
    @IBOutlet weak var dayLabel: UILabel!
    
    enum UIDatePickerMode : Int {
        case time = 0
        case date = 1
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        findingDay.backgroundColor = UIColor.init(red: 89/255, green: 172/255, blue: 236/255, alpha: 1.0)
        dayLabel.backgroundColor = UIColor.init(red: 241/255, green: 241/255, blue: 241/255, alpha: 1.0)
        
        findingDay.layer.cornerRadius = 8;
        dayLabel.layer.cornerRadius = 8;
        dayLabel.layer.masksToBounds = true;
        
        typeDate.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func datePickerChanged(sender: UIDatePicker) {
        let formatter = DateFormatter()
        //formatter.dateStyle = .short
        formatter.dateFormat = "yyyy-MM-dd"
        typeDate.text = formatter.string(from: sender.date)
        
        print("Try this at home")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        textField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(datePickerChanged(sender:)), for: .valueChanged)
        
        print("This Worked")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        typeDate.resignFirstResponder()
        return true
    }
    
    func getDayOfWeek(_ today:String) -> Int {
        let formatter  = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let todayDate = formatter.date(from: today) else { return 0 }
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: todayDate)
        return weekDay
    }
    
    // MARK: Helper Methods
    func closekeyboard() {
        self.view.endEditing(true)
    }
    
    // MARK: Touch Events
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        closekeyboard()
    }
    
    @IBAction func findDayButton(_ sender: Any) {
        
        //dayLabel.text! = "\(getDayOfWeek(typeDate.text!))"
        let day = getDayOfWeek(typeDate.text!)
        print(Int(day))
        switch(Int(day)) {
        case 1: dayLabel.text! = "Sunday"
        case 2: dayLabel.text! = "Monday"
            case 3: dayLabel.text! = "Tuesday"
            case 4: dayLabel.text! = "Wednesday"
            case 5: dayLabel.text! = "Thursday"
            case 6: dayLabel.text! = "Friday"
            case 7: dayLabel.text! = "Saturday"
        default: dayLabel.text! = "Do not know"
            
        }
        
    }

}
