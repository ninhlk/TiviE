//
//  MoviesTableViewCell.swift
//  TiviE
//
//  Created by Ninh Lê on 23/01/2024.
//

import UIKit
import FSPagerView

class MoviesTableViewCell: UITableViewCell, FSPagerViewDataSource, FSPagerViewDelegate {
    
    @IBOutlet weak var labelGenre: UILabel!
    
    @IBOutlet weak var pagerView: FSPagerView! {
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.dataSource = self
        tableView.delegate = self
        pagerView.itemSize = CGSize(width: UIScreen.main.bounds.width - 150,
                                    height: UIScreen.main.bounds.height / 2.3)
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.setImageFromStringrURL(stringUrl: arrayMovies[index].imageP)
        //        cell.textLabel?.text = arrayMovies[index].genre
        labelGenre.text = arrayMovies[index].genre
        return cell
    }
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return arrayMovies.count
        
    }
}
    
