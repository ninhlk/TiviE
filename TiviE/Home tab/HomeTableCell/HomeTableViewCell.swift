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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerCollectionView()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "HomeTableViewCell", bundle: nil)
    }
    
    //MARK: register collection view
    private func registerCollectionView () {
        collectionView.register(HomeCollectionViewCell.nib(), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func setData (button: String) {
        buttonGenre.setTitle(button, for: .normal)
    }

}

// MARK: setup collection view in tableview cell
extension HomeTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.setData(image: arrayMovies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 180)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(arrayMovies[indexPath.row].name)

//        var storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let playerController = storyBoard.instantiateViewController(withIdentifier: "PlayerController") as! PlayerController

    }
    
    
}
