//
//  detailsVC.swift
//  fenerbahce
//
//  Created by Ogün Minkara on 15.12.2023.
//

import UIKit
import Foundation

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var jobName: UILabel!
    @IBOutlet weak var name: UILabel!
    
    var selectedFootballers : footballers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = selectedFootballers?.name
        imageView.image = selectedFootballers?.image
        jobName.text = selectedFootballers?.position
    }
    

 

}
