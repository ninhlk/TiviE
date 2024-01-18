//
//  TableViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 18/01/2024.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var buttonGenre: UIButton!
    @IBOutlet weak var collectionViewMovie: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewMovie.dataSource = self
        collectionViewMovie.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayMovies.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection Movie Cell", for: indexPath) as! CollectionViewCell
                
        cell.imageCollectionCell.setImageFromStringrURL(stringUrl: arrayMovies[indexPath.row].imageP)
        cell.labelCollectionCell.text = arrayMovies[indexPath.row].name
        
        return cell
    }
}
