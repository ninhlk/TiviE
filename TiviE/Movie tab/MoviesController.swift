//
//  MoviesController.swift
//  TiviE
//
//  Created by Ninh Lê on 17/01/2024.
//

import UIKit

class MoviesController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayMovies.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection Movie Cell", for: indexPath) as! MovieCollectionViewCell
        let urlImage: URL = URL(string: arrayMovies[indexPath.section].imageP)!
        
        do {
            let dataImage: Data = try Data(contentsOf: urlImage)
            cell.imageCollectionCell.image = UIImage(data: dataImage)
        } catch {
            print("No data for image")
        }
        cell.labelCollectionCell.text = arrayMovies[indexPath.row].name
        
        return cell
    }
}
