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
    @IBOutlet weak var buttonGuess: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int(arc4random_uniform(100));
        print(model.numberToGuess);
        label.text = "Try to guess the number!"
        
    }
    
    @IBAction func onChangeTextField(_ sender: UITextField) {
        if(model.isValid(guess: Int(textField.text!))){
        buttonGuess.isEnabled = true;
        } else {
            buttonGuess.isEnabled = false
        }
    }
    
    @IBAction func onclick(_ sender: UIButton) {
        // Check for input not nill
        
        if(Optional(guessedNumber) != nil){
            print("")
            guessedNumber = compare(guessedString: textField.text!)
            
            let text: String?
            switch guessedNumber{
            case -1:
                text = "Your number is to low"
            case 1:
                text = "Your number is too high"
            default:
                text = "Hurray! Thats the number!"
            }
            label.text = text
            model.counterOfTrys+=1
        }
        
              
        
    }
    
    func compare(guessedString: String) -> Int! {
        let guess = Int(guessedString)!
        return model.compare(guess: guess)
    }
    
    override func
    shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("nope")

        guessedNumber = compare(guessedString: textField.text!)
        switch guessedNumber{
        case -1:
            return false
        case 1:
            return false
        default:
            return true
        
    }
    
    


}

}

