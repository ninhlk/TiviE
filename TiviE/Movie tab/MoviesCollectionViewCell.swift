//
//  MoviesCollectionViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 02/02/2024.
//

import UIKit
import Kingfisher

class MoviesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func setup(image: Movies) {
        //        imageView.setImageFromStringrURL(stringUrl: image.imageL)
        //        imageView.contentMode = .scaleAspectFit
        let url = URL(string: image.imageL)
        let processor = DownsamplingImageProcessor(size: imageView.bounds.size)
        |> RoundCornerImageProcessor(cornerRadius: 0)
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(
            with: url,
            placeholder: UIImage(named: "placeholderImage"),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ] )
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
    }
    
    //    override func prepareForReuse() {
    //        super.prepareForReuse()
    //        imageView.image = nil
    //        imageView.contentMode = .scaleAspectFit
    //
    //    }
}
