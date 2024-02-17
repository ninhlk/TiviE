//
//  BaseCustomView.swift
//  TiviE
//
//  Created by Ninh Lê on 01/02/2024.
//

import UIKit
import FSPagerView

class PagerView: BaseView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var pagerView: FSPagerView!
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setPagerView()
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setPagerView()
    }

    //MARK: Register Pager View
    func setPagerView() {
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.itemSize = CGSize(width: pagerView.frame.size.width / 1.7, height: contentView.frame.size.height - 50 )
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
    }
}

//MARK: Setup pager view
extension PagerView: FSPagerViewDataSource, FSPagerViewDelegate {
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        let url = URL(string: arrayMovies[index].imageP)
        cell.imageView?.kf.setImage(with: url)
        //        cell.textLabel?.text = arrayMovies[index].genre
        labelGenre.text = arrayMovies[index].genre
        return cell
    }
    
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return arrayMovies.count
    }
    

}
