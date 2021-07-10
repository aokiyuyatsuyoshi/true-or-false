//
//  soundModel.swift
//  true-or-false
//
//  Created by Yuya Aoki on 2021/07/09.
//

import Foundation
import AVFoundation

class SoundModel{
    
    
    var player: AVAudioPlayer!
    
    //ファイル名と拡張子入れると流れ始めるメソッド
    func playSound(fileName:String, type:String){
        
        //これで効果音のパスを持ってくる
        let Path = Bundle.main.url(forResource: fileName, withExtension: type)
        do {
            //この二行でplay
            player = try AVAudioPlayer(contentsOf: Path!)
            player?.play()
        } catch  {
            print("error is occured")
        }
    }
    
}
