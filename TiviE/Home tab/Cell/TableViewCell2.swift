//
//  TableViewCell2.swift
//  TiviE
//
//  Created by Ninh Lê on 02/02/2024.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var buttonGenre: UIButton!
    var actionNextToScreen: NextToScreen?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerCollectionView()
    }

    private func registerCollectionView () {
        collectionView.register(HomeCollectionViewCell.nib(), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func setData (button: String) {
        buttonGenre.setTitle(button, for: .normal)
    }
}

extension TableViewCell2: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.setData(image: arrayMovies[indexPath.row], style: false)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 192, height: 108)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        rowID = indexPath.row
        actionNextToScreen?.nextToScreen()
        print(arrayMovies[indexPath.row].name)
    }
    
}
