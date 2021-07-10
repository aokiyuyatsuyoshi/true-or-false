//
//  NextViewController.swift
//  true-or-false
//
//  Created by Yuya Aoki on 2021/07/07.
//

import UIKit

class NextViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var Correct: UILabel!
    @IBOutlet weak var Wrong: UILabel!
    
    var CorrectCount = 0
    var WrongCount = 0
    var sound = SoundModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Correct.text = String(CorrectCount)
        Wrong.text = String(WrongCount)
        sound.playSound(fileName: "result", type: "mp3")

     
    }
    

    @IBAction func BackToQuestion(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
