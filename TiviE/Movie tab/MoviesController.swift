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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Collection Movie Cell", for: indexPath) as! CollectionViewCell

        if let url = URL(string: arrayMovies[indexPath.row].imageP) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
          // Error handling...
          guard let imageData = data else { return }
          DispatchQueue.main.async {
              cell.imageCollectionCell.image = UIImage(data: imageData)
          }
        }.resume()
      }
        cell.labelCollectionCell.text = arrayMovies[indexPath.row].name
        
        return cell
    }
    
}
