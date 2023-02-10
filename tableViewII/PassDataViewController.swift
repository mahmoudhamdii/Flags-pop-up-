//
//  PassDataViewController.swift
//  tableViewII
//
//  Created by hamdi on 26/12/2022.
//

import UIKit

class PassDataViewController: UIViewController {
    @IBOutlet weak var countryFlagImageView :UIImageView!
    @IBOutlet weak var countryNameLbl :UILabel!
    var passImage :UIImage?
    var passText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryNameLbl.text = passText
        countryFlagImageView.image = passImage
        
       
        
    }
    

   

}
