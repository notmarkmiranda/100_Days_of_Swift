//
//  ViewController.swift
//  TapCounter
//
//  Created by Mark Miranda on 8/7/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
    }
    
    // MARK: - Properties
    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    // MARK: - Interactions
    @IBAction func tapButton(sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tapResetButton(sender: UIBarButtonItem) {
        count = 0
        countLabel.text = "0"
    }
    @IBAction func holdTapButton(sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    // MARK: - Functions
    func increaseCount(){
        count += 1
        countLabel.text = String(count)
    }
    
}

