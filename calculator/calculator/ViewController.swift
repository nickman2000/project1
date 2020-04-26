//
//  ViewController.swift
//  calculator
//
//  Created by nikolozi on 4/26/20.
//  Copyright © 2020 nikolozi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Integer1: UITextField!
    
    @IBOutlet weak var Integer2: UITextField!
    
    @IBOutlet weak var გამოთვალე : UILabel!
    
    var SelectedOperation = "+"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func UIsegment(_ sender: UISegmentedControl) {
        switch sender .selectedSegmentIndex {
            case 0 :
            SelectedOperation = "+"
            
            case 1 :
            SelectedOperation = "-"
            
            case 2 :
            SelectedOperation = "*"
            
            case 3 :
            SelectedOperation = "/"
            
        default: SelectedOperation = "+"
            
        }
    }
    @IBAction func sizechange(_ sender: UISlider) {
        გამოთვალე.font =  გამოთვალე.font.withSize(CGFloat(Int(sender.value)))
        
        
    }
    
    @IBAction func UIbutton(_ sender: UIButton) {
        if let Value1 = Int(Integer1.text!), let Value2 = Int(Integer2.text!){
            switch SelectedOperation {
            case "+" :
            გამოთვალე.text = String (Value1 + Value2)
            case "-" :
            გამოთვალე.text = String (Value1 - Value2)
                
            case "*" :
            გამოთვალე.text = String (Value1 * Value2)
                
            case "/" :
                if Value2 == 0 {
                    
                    გამოთვალე.text = " mistake"
                } else {
                   გამოთვალე.text = String (Value1 / Value2)
                }
            default: გამოთვალე.text = "გამოთვალე"
            }
        } else {
            გამოთვალე.text = " eneter numbers "
        
            
        
        }
        
        
    }
}


