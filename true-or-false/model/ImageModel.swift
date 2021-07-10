//
//  ImageModel.swift
//  true-or-false
//
//  Created by Yuya Aoki on 2021/07/08.
//

import Foundation


class ImageModel{
    var ImageText = ""
    var Answer :Bool
    
    init(imagename:String, answer:Bool){
        ImageText = imagename
        Answer = answer
    }
}
