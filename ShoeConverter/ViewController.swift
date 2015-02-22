//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Kostas Kokkinopoulos on 18/02/2015.
//  Copyright (c) 2015 Kostas Kokkinopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensShoesSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoesSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
        
       let sizeFromTextField = mensShoesSizeTextField.text
        //Check if user provided an empty string
        if (sizeFromTextField == "") {
            mensShoesSizeTextField.placeholder = "No empty spaces allowed!"
            return}
     
        let integerFromTextField = sizeFromTextField.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoesSizeLabel.hidden = false
        mensConvertedShoesSizeLabel.text = "\(integerFromTextField + conversionConstant)" + " in European Shoe size!"
        mensShoesSizeTextField.text = ""
        mensShoesSizeTextField.placeholder = "Enter US Shoe Size Here"
        mensShoesSizeTextField.becomeFirstResponder()
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: AnyObject) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe size"
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.placeholder = "Enter US Shoe Size Here"
        womensShoeSizeTextField.becomeFirstResponder()

    }
    
    
}

