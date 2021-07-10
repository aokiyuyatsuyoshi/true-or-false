//
//  ImagesList.swift
//  true-or-false
//
//  Created by Yuya Aoki on 2021/07/08.
//

import Foundation

class ImagesList{
    var list = [ImageModel]()
    
    init(){
        for i in 1..<12{
            if i == 1 || i == 3 || i == 5 || i == 8{

                list.append(ImageModel(imagename: String(i), answer: false))
            }else{
                list.append(ImageModel(imagename: String(i), answer: true))

            }
        }

    }
}
