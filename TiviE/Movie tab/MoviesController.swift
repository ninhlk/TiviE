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
    
    @IBOutlet weak var pagerView: FSPagerView! 

    override func viewDidLoad() {
        super.viewDidLoad()
        setPagerView()
    }
    
    // MARK: setup pager view
    func setPagerView() {
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.itemSize = CGSize(width: UIScreen.main.bounds.width / 1.6,
                                    height: UIScreen.main.bounds.height / 2.2)
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
    }
    
}

//MARK: setup Data pager view
extension MoviesController: FSPagerViewDataSource, FSPagerViewDelegate {
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index) 
        cell.imageView?.setImageFromStringrURL(stringUrl: arrayMovies[index].imageP)
        cell.textLabel?.text = arrayMovies[index].genre
        labelGenre.text = arrayMovies[index].genre
        return cell
    }
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return arrayMovies.count
    }
    
    //MARK: next to player when cell is click
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        id = index
        let playerController = storyboard?.instantiateViewController(withIdentifier: "PlayerController") as! PlayerController
        present(playerController, animated: true)
    }
    
}
