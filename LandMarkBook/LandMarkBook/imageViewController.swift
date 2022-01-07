//
//  imageViewController.swift
//  LandMarkBook
//
//  Created by user209356 on 1/7/22.
//

import UIKit
import SwiftUI

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var secilensehir = ""
    var secilenresim = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = secilensehir
        imageView.image = secilenresim
        
        
        
    }
    

    

}
