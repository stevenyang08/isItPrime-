//
//  ViewController.swift
//  IsItPrime?
//
//  Created by Steven Yang on 4/12/16.
//  Copyright © 2016 Yato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeTextfield: UITextField!
    @IBOutlet weak var isItPrimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func isItPrime(sender: AnyObject) {
        if let answer = Int(primeTextfield.text!) {
        var isPrime = true
        
            if answer == 1 {
                isPrime = false
            }
        
            if answer != 1 && answer != 2 {
                for i in 2 ..< answer {
                    if answer % i == 0 {
                        isPrime = false
                }
                
            }
        }
            if isPrime {
                isItPrimeLabel.text = "\(answer) is a prime #"
            } else {
                isItPrimeLabel.text = "\(answer) is not a prime #"
            }
            
        } else {
            isItPrimeLabel.text = "Please enter a number!"
        }
    
    }



}

