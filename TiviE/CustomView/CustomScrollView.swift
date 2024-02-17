//
//  SlideView.swift
//  TiviE
//
//  Created by Ninh Lê on 06/02/2024.
//

import UIKit
import Kingfisher

class CustomScrollView: BaseView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var genreLB: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupScrollView()
        scrollView.delegate = self
        pageControl.numberOfPages = arrayMovies.count
        startAutoScrollTimer()
    }
    
    //MARK: Creat an scroll view
    func setupScrollView() {
        
        let imageWidth = contentView.frame.width
        let imageHeight = imageWidth / (16/9)
        
        for i in 0..<arrayMovies.count {
            let imageView = UIImageView()
            let url = URL(string: arrayMovies[i].imageL)
            imageView.kf.setImage(with: url)
            imageView.frame = CGRect(x: CGFloat(i) * imageWidth, y: 0, width: imageWidth, height: imageHeight)
            imageView.contentMode = .scaleAspectFit
            scrollView.addSubview(imageView)
        }
        
        scrollView.contentSize = CGSize(width: imageWidth * CGFloat(arrayMovies.count), height: imageHeight)
        scrollView.frame = CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight)
        scrollView.isPagingEnabled = true
    }
    
    //MARK: auto scroll with timer
    func startAutoScrollTimer() {
           let timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(autoScroll), userInfo: nil, repeats: true)
           RunLoop.current.add(timer, forMode: .common)
       }

    @objc func autoScroll() {
        // Get current content
        var currentOffset = scrollView.contentOffset
        let width = scrollView.frame.width
        var currentPage = Int(scrollView.contentOffset.x / width)

        // Scroll to right
        currentOffset.x += scrollView.bounds.width
        currentPage += 1

        // Check current is the end of list
        if currentOffset.x > scrollView.contentSize.width - scrollView.bounds.width {
            currentOffset.x = 0
            currentPage = 0
        }
        
        // Thực hiện scroll
        scrollView.setContentOffset(currentOffset, animated: true)
        genreLB.text = arrayMovies[currentPage].genre
        pageControl.currentPage = currentPage
    }
}

//MARK: manual scroll
extension CustomScrollView: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        let currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
        genreLB.text = arrayMovies[currentPage].genre
    }
}




