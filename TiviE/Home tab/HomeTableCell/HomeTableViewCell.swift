//
//  HomeTableViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit


class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var buttonGenre: UIButton!
    @IBOutlet var collectionView: UICollectionView!
    
    static let identifier = "HomeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "HomeTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(HomeCollectionViewCell.nib(), forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as! HomeCollectionViewCell
        cell.imageCollection.setImageFromStringrURL(stringUrl: arrayMovies[indexPath.row].imageP)
        cell.layer.cornerRadius = 5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }

    //Click item of collectview
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(arrayMovies[indexPath.row].name)
//        var storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let playerController = storyBoard.instantiateViewController(withIdentifier: "PlayerController") as! PlayerController
//        self.navigationController?.pushViewController(playerController, animated: true)
    }
    
    
}
