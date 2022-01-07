//
//  SehirCollectionViewCell.swift
//  LandMarkBook
//
//  Created by user209356 on 1/7/22.
//

import UIKit

class SehirCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var SehirImageView: UIImageView!
    @IBOutlet weak var selectLabel: UILabel!
    
    
    @IBOutlet weak var isimlbl: UILabel!
    var isEditing: Bool = false {
        didSet {
            selectLabel.isHidden = !isEditing
        }
    }
    
    func setup(with sehir: Sehir){
        SehirImageView.image = sehir.image
        isimlbl.text = sehir.title
    }
    
}
