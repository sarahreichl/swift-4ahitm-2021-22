class Model{
    var numberToGuess = 0
    var counterOfTrys = 0
    
    
    func compare(guess guessedNumber:Int!) -> Int! {
        var result = 0
        counterOfTrys = counterOfTrys+1
  
            if(guessedNumber < 10 && guessedNumber > 0){
                result = 0
            }
            if guessedNumber < numberToGuess {
                result = -1
            } else if guessedNumber > numberToGuess  {
                result = 1
            }
        return result
        }‚
    
    func isValid(guess guessedString: String?) -> Bool{
        var result = false
        if let str = guessedString{
            let guess = Int(str)
            if let number = Int(str){
                if number > 0 && number < 10 {
                    result = true
                }
            }
        }
        return result
    }
}

