//
//  HomeCollectionViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageCollection: UIImageView!
    
    static let identifier = String(describing: HomeCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: "HomeCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
