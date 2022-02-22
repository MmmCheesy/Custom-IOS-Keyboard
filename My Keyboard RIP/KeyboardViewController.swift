//
//  KeyboardViewController.swift
//  MyTypeKeyboard
//
//  Created by Alexander Eckert on 6/5/18.
//  Copyright © 2018 Alexander Eckert. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var shift : Bool = false
    var activeFont : Int = 0
    
    var returns : Int = 0
    var row1 : Int = 0
    var row2 : Int = 0
    var row3 : Int = 0
    var row4 : Int = 0
    var row5 : Int = 0
    var row6 : Int = 0
    var row7 : Int = 0
    var rowOne : Bool = true
    var rowTwo : Bool = false
    var rowThree : Bool = false
    var rowFour : Bool = false
    var rowFive : Bool = false
    var rowSix : Bool = false
    var rowSeven : Bool = false
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults(suiteName: "group.io.golf.fonts")
        defaults?.set(0, forKey: "returns")
        defaults?.set(0, forKey: "row1")
        defaults?.set(0, forKey: "row2")
        defaults?.set(0, forKey: "row3")
        defaults?.set(0, forKey: "row4")
        defaults?.set(0, forKey: "row5")
        defaults?.set(0, forKey: "row6")
        defaults?.set(0, forKey: "row7")
        activeFont = defaults!.integer(forKey: "activeFont")
    }
    func getALetterFromDefaults(letter: String) -> UIImage {
        let defaults = UserDefaults(suiteName: "group.io.golf.fonts")
        let savedLetter = defaults?.object(forKey: letter) as? Data
        let theLetter = NSKeyedUnarchiver.unarchiveObject(with: savedLetter!) as! UIImage
        return theLetter
    }
    func updateKeyboard(){
        let defaults = UserDefaults(suiteName: "group.io.golf.fonts")
        var key = defaults?.integer(forKey: "key")
        key! += 1
        defaults?.set(key, forKey: "key")
        if shift == true {
            shift = false
        }
    }
 
    func save(what: Int, key: String){
        let defaults = UserDefaults(suiteName: "group.io.golf.fonts")
        defaults?.set(what, forKey: key)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override var shouldAutorotate: Bool{
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func NextKeyboardBtn(_ sender: Any) {
        self.advanceToNextInputMode()
    }
    @IBAction func BackspaceBtn(_ sender: Any) {
        self.textDocumentProxy.deleteBackward()
        let defaults = UserDefaults(suiteName: "group.io.golf.fonts")
        var key = defaults?.integer(forKey: "key")
        if key! != 0 {
            key! -= 1
        }
        defaults?.set(key, forKey: "key")
    }
    @IBAction func ReturnBtn(_ sender: Any) {
        self.textDocumentProxy.insertText("\n\n")
    }
    @IBAction func SpaceBar(_ sender: Any) {
        let space : UIImage = UIImage(named: "Space")!
        
        updateKeyboard()
        UIPasteboard.general.image = space
    }
    @IBAction func ABtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "A\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "a\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func BBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "B\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "b\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func CBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "C\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "c\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func DBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "D\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "d\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func EBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "E\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "e\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func FBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "F\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "f\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func GBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "G\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "g\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func HBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "H\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "h\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func IBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "I\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "i\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func JBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "J\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "j\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func KBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "K\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "k\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func LBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "L\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "l\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func MBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "M\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "m\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func NBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "N\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "n\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func OBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "O\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "o\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func PBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "P\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "p\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func QBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "Q\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "q\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func RBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "R\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "r\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func SBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "S\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "s\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func TBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "T\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "t\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func UBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "U\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "u\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func VBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "V\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "v\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func WBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "W\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "w\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func XBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "X\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "x\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func YBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "Y\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "y\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func ZBtn(_ sender: Any) {
        if shift == true {
            let letter : UIImage = getALetterFromDefaults(letter: "Z\(activeFont)")
            UIPasteboard.general.image = letter
        }
        else if shift == false {
            let letter : UIImage = getALetterFromDefaults(letter: "z\(activeFont)")
            UIPasteboard.general.image = letter
        }
        updateKeyboard()
    }
    @IBAction func QuestionBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "?\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func ExclamationBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "!\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func PeriodBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: ".\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func CommaBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: ",\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func ShiftBtn(_ sender: Any) {
        if shift == false {
            shift = true
        }
        else {
            shift = false
        }
    }
    @IBAction func OneBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "1\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func TwoBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "2\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func ThreeBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "3\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func FourBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "4\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func FiveBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "5\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func SixBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "6\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func SevenBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "7\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func EightBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "8\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func NineBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "9\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func ZeroBtn(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "0\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
    @IBAction func Apostophe(_ sender: Any) {
        let letter : UIImage = getALetterFromDefaults(letter: "'\(activeFont)")
        UIPasteboard.general.image = letter
        updateKeyboard()
    }
}
