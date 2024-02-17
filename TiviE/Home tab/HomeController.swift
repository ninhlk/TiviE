//
//  HomeController.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit


class HomeController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.setUpTableView(with: self, types: [HomeTableViewCell.self, TableViewCell2.self])
    }
    
}

extension HomeController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 3 != 0 {
            let cell = tableView.reuseCell(cell: HomeTableViewCell.self)
            cell.setData(button: genre[indexPath.row])
            cell.actionNextToScreen = self
            return cell
        } else {
            let cell = tableView.reuseCell(cell: TableViewCell2.self)
            cell.setData(button: genre[indexPath.row])
            cell.actionNextToScreen = self
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row % 3 != 0 ? 210 : 138
    }
    
}

extension HomeController: NextToScreen {
    func nextToScreen() {
        let vc = PlayerController.instantiate()
        self.present(vc, animated: true, completion: nil)
    }
    
}
