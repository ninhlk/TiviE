//
//  MoviesController.swift
//  TiviE
//
//  Created by Ninh Lê on 17/01/2024.
//

import UIKit


class MoviesController: BaseViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var pageControl : UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        pageControl.numberOfPages = arrayMovies.count
        tableView.setUpTableView(with: self, types: [HomeTableViewCell.self])
        startAutoScrollTimer()

    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "MoviesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MoviesCollectionViewCell")
        collectionView.frame.size.height = tableView.frame.width / (16/9)
    }
    
    //MARK: collection view auto swipe
    func startAutoScrollTimer() {
           let timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(autoScroll), userInfo: nil, repeats: true)
           RunLoop.current.add(timer, forMode: .common)
       }
    
    @objc func autoScroll() {
        // Lấy vị trí hiện tại của contentOffset
        let width = collectionView.frame.width
        var currentPage = Int(collectionView.contentOffset.x / width)
        var currentOffset = collectionView.contentOffset
        // Scroll sang phải
        currentOffset.x += collectionView.bounds.width
        currentPage += 1

        // Kiểm tra xem đã đến cuối danh sách chưa
        if currentOffset.x > collectionView.contentSize.width - collectionView.bounds.width {
            // Nếu đã đến cuối, quay lại đầu danh sách
            currentOffset.x = 0
            currentPage = 0
        }

        // Thực hiện scroll
        collectionView.setContentOffset(currentOffset, animated: true)
        // Update current page cho page control
        pageControl.currentPage = currentPage
    }
    
}

//MARK: setup collection view
extension MoviesController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayMovies.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoviesCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
        cell.setup(image: arrayMovies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    //MARK: setup current page for page control of collection view
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        let currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
    
    
}

//MARK: setup table view
extension MoviesController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.reuseCell(cell: HomeTableViewCell.self)
        cell.setData(button: arrayMovies[indexPath.row].genre)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        210
    }
}
