//
//  MoviesController.swift
//  TiviE
//
//  Created by Ninh Lê on 17/01/2024.
//

import UIKit
import FSPagerView

class MoviesController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "MoviesTableViewCell", bundle: nil), forCellReuseIdentifier: "MoviesTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        

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


    
}
