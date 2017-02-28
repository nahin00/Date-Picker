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
        
        // Creating a ToolBar
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Adding a bar button to ToolBar
        
        let okBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(ViewController.okBtnTapped))
        toolBar.setItems([okBarButton], animated: true)
        
        // Text Field input type
        
        textField.inputAccessoryView = toolBar
        textField.inputView = datePicker
        
    }
    
    func okBtnTapped(){
        
        // Date Formatter formats date and time
        
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

