//
//  ViewController.swift
//  Date Picker
//
//  Created by Nahin Ahmed on 2/28/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    

    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
    }
    
    func createDatePicker(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let okBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(ViewController.okBtnTapped))
        toolBar.setItems([okBarButton], animated: true)
        
        textField.inputAccessoryView = toolBar
        textField.inputView = datePicker
        
    }
    
    func okBtnTapped(){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm a"
        
        textField.text = dateFormatter.string(from: datePicker.date) + "   " + timeFormatter.string(from: datePicker.date)
        label.text = dateFormatter.string(from: datePicker.date) + "   " + timeFormatter.string(from: datePicker.date)
        
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

