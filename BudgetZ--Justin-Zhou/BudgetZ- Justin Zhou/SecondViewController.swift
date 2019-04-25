//
//  SecondViewController.swift
//  BudgetZ- Justin Zhou
//
//  Created by Justin Zhou on 2019-03-17.
//  Copyright © 2019 Justin Zhou. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    


    @IBOutlet weak var dateField: UITextField!
    
    @IBOutlet weak var totalField: UITextField!
    
    @IBOutlet weak var remarkField: UITextField!
    
    
    
    @IBOutlet weak var Viewtext: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dateField.delegate = self
        totalField.delegate = self
        remarkField.delegate = self
        
    }

    @IBAction func enterTapped(_ sender: Any) {
        Viewtext.text = "Date : \(dateField.text!)\n Total : \(totalField.text!)\n Remark : \(remarkField.text!) \n Bugget : -\(totalField.text!)"
    }
}
extension UIViewController :UITextFieldDelegate{
    private func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



