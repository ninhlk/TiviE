//
//  MoviesController.swift
//  TiviE
//
//  Created by Ninh Lê on 17/01/2024.
//

import UIKit
import FSPagerView

class MoviesController: UIViewController {

    @IBOutlet weak var labelGenre: UILabel!
    
    @IBOutlet weak var pagerView: FSPagerView! {
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pagerView.itemSize = CGSize(width: UIScreen.main.bounds.width - 150,
                                    height: UIScreen.main.bounds.height / 2)
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
    }
    
//    func setUPPagerView() {
//            pagerView.delegate = self
//            pagerView.dataSource = self
//            pagerView.itemSize = CGSize(width: UIScreen.main.bounds.width - 40,
//                                        height: UIScreen.main.bounds.height / 4)
//            pagerView.transformer = FSPagerViewTransformer(type: .coverFlow)
//            pagerView.register(FSPagerView.self, forCellWithReuseIdentifier: "cell")
//        }
    
}

extension MoviesController: FSPagerViewDataSource, FSPagerViewDelegate {
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

    func pagerView(_ pagerView: FSPagerView, didHighlightItemAt index: Int) {
        
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        
    }
    
}
