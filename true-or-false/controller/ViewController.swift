//
//  ViewController.swift
//  true-or-false
//
//  Created by Yuya Aoki on 2021/07/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    //答えの入ったリストモデルを呼び出す
    let imagesList = ImagesList()
    //ユーザが選択した解答
    var SelectedAnswer = false
    //正答数
    var TotalCorrectAnswer = 0
    //誤解答数
    var WrongCorrectAnswer = 0
    //問題番号
    var QuestionNumber = 0
    //効果音を再生する
    var soundModel = SoundModel()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TotalCorrectAnswer = 0
        WrongCorrectAnswer = 0
        QuestionNumber = 0
        imageView.image = UIImage(named: imagesList.list[QuestionNumber].ImageText)
    }


    
    @IBAction func Answer(_ sender: Any) {
        
        //正解ボタンならば
        if (sender as AnyObject).tag == 1{
            SelectedAnswer = true
            soundModel.playSound(fileName: "true", type: "mp3")

        }
        //不正解が押された時
        else if (sender as AnyObject).tag == 2{
            SelectedAnswer = false
            soundModel.playSound(fileName: "false", type: "mp3")

        }
        Check()
        imageView.image = UIImage(named: imagesList.list[QuestionNumber].ImageText)

        
        
    }
    
    
    func Check(){
        
            
            let TrueAnswer = imagesList.list[QuestionNumber].Answer
            //もし正解ならば
            if TrueAnswer == SelectedAnswer{
                TotalCorrectAnswer = TotalCorrectAnswer + 1
            }
            else{
                WrongCorrectAnswer = WrongCorrectAnswer + 1
            }
             
        QuestionNumber = QuestionNumber + 1
        
        if(QuestionNumber == 11){
            performSegue(withIdentifier: "next", sender: nil)
            QuestionNumber = 10

        }

        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next"{
            let next = segue.destination as!NextViewController
            next.CorrectCount = TotalCorrectAnswer
            next.WrongCount = WrongCorrectAnswer
        }
    }
    
    
}

