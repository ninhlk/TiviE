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
            imageCollection.setImageFromStringrURL(stringUrl: image.imageP)
        } else {
            imageCollection.setImageFromStringrURL(stringUrl: image.imageL)
        }
        layer.cornerRadius = 5
    }


    
}
