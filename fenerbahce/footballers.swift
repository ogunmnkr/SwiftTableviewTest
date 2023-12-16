//
//  footballers.swift
//  fenerbahce
//
//  Created by Ogün Minkara on 15.12.2023.
//

import Foundation
import UIKit

/* 
 position kısmı için Enum denedim fakat UILabel kısmına .text olarak yazdıramadığım için vazgeçtim.
 
 enum footballerPosition {
case Goalkeeper
case Defender
case Midfielder
case Striker
}
 */

class footballers{
    var name: String
    var position: String
    var image: UIImage
    
    /* 
     Yeni futbolcu eklerken hangi özellikleri mutlaka istediğimi belirtebilmek için
     init fonksiyonu kullandım.
    */
    init(name: String, position: String, image: UIImage) {
        self.name = name
        self.position = position
        self.image = image
    }
    

}
