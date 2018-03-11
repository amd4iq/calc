//
//  ViewController.swift
//  calc
//
//  Created by Ahmed Alwaeli on 1/19/17.
//  Copyright © 2017 Ahmed Alwaeli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Number1: UITextField!
    @IBOutlet weak var Number2: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Number1.delegate = self
        Number2.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        
    

    @IBAction func SumButton(_ sender: Any) {
       let n1:Double = Double(Number1.text!)!
        let n2:Double = Double(Number2.text!)!
        
        let sum = n1 + n2
        
        ResultLabel.text = "\(sum)"
    }
    
    
    @IBAction func SubButton(_ sender: Any) {
        let n1:Double = Double(Number1.text!)!
        let n2:Double = Double(Number2.text!)!
        
        let sub = n1 - n2
        
        ResultLabel.text = "\(sub)"
    }
    
    
    @IBAction func MultiButton(_ sender: Any) {
        let n1:Double = Double(Number1.text!)!
        let n2:Double = Double(Number2.text!)!
        
        let multi = n1 * n2
        
        ResultLabel.text = "\(multi)"
    }
    
    
    @IBAction func DivButton(_ sender: Any) {
        let n1:Double = Double(Number1.text!)!
        let n2:Double = Double(Number2.text!)!
        
        let div = n1 / n2
        
        ResultLabel.text = "\(div)"
    }
    

    

}

