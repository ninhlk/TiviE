//
//  BaseCustomView.swift
//  TiviE
//
//  Created by Ninh Lê on 01/02/2024.
//

import UIKit
import FSPagerView

class PagerView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var pagerView: FSPagerView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
        setPagerView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInit()
        setPagerView()
    }
    
    private func customInit() {
        //Nhớ lấy đúng tên của file XIB nếu không sẽ không chạy được
        Bundle.main.loadNibNamed("PagerView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [ .flexibleHeight, .flexibleWidth]
    }
    
    func setPagerView() {
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.itemSize = CGSize(width: pagerView.frame.size.width / 1.7, height: contentView.frame.size.height - 50 )
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
    }
}

extension PagerView: FSPagerViewDataSource, FSPagerViewDelegate {
    
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
