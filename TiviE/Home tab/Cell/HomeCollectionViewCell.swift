//
//  HomeCollectionViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageCollection: UIImageView!
      
    static func nib() -> UINib {
        return UINib(nibName: "HomeCollectionViewCell", bundle: nil)
    }
    
    func setData(image: Movies, style: Bool) {
        if style {
            let url = URL(string: image.imageP)
            imageCollection.kf.setImage(with: url)
        } else {
            let url = URL(string: image.imageL)
            imageCollection.kf.setImage(with: url)
        }
        layer.cornerRadius = 5
    }


    
}
