//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mark Miranda on 8/7/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextField.becomeFirstResponder()
        createToolbar()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var subtotalTextField: UITextField!
    
    // MARK: - Functions
    func dismissKeyboard() {
        
    }
    func createToolbar() {
        // create toolbar
        let toolbar = UIToolbar()
        toolbar.barStyle = .Default
        toolbar.sizeToFit()
        
        // create done button
        let doneButton = UIBarButtonItem(
            title: "Done",
            style: .Done,
            target: self,
            action: "#dismissKeyboard")
        
        // create flexible space
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .FlexibleSpace,
            target: nil,
            action: nil)
        
        // array of buttons
        let buttons = [flexibleSpace, doneButton]
        
        // add buttons to toolbar
        toolbar.setItems(buttons, animated: true)
        
        //attach to keyboard
        subtotalTextField.inputAccessoryView = toolbar
    }
}

