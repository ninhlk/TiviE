//
//  MoviesCollectionViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 02/02/2024.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(image: Movies) {
        imageView.setImageFromStringrURL(stringUrl: image.imageL)
        imageView.contentMode = .scaleAspectFit
    }
}
