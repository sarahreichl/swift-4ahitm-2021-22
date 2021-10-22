//
//  ViewController.swift
//  test
//
//  Created by Holzer Teresa on 17.09.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    var guessedNumber = 0
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var guessMeButton: UIButton!
   
    @IBAction func onChangedValueTextfield(_ sender: UITextField) {
        print("text is now \(sender.text!)")
        
        guessMeButton.isEnabled = model.isValid(guess: textField.text) ? true : false        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int(arc4random_uniform(10));
        label.text = "Try to guess the number!"
        
    }
    
    
    @IBAction func onclick(_ sender: UIButton) {
        // Check for input not nill
        guessedNumber = compare(guessedString: textField.text!)
        
        let text: String?
        switch guessedNumber{
        case -1:
            text = "Your number is to low"
        case 1:
            text = "Your number is too high"
        case 0:
            text = "Between 0 and 10 ..."
        default:
            text = "Hurray! Thats the number!"
        }
        label.text = text
        model.counterOfTrys+=1
        
    }
    
    func compare(guessedString: String) -> Int! {
        let guess = Int(guessedString)!
        return model.compare(guess: guess)
    }
    
    


}

