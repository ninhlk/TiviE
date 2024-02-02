//
//  HomeController.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit


class HomeController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
    }
    
    private func registerTableView() {
        tableView.register(HomeTableViewCell.nib(), forCellReuseIdentifier: "HomeTableViewCell")
        tableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}

extension HomeController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        if indexPath.row % 3 != 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
            cell.setData(button: genre[indexPath.row])
            cell.actionNextToScreen = self
            return cell

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
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
        print(rowID!)
        let screen = storyboard?.instantiateViewController(withIdentifier: "PlayerController") as! PlayerController
        self.present(screen, animated: true, completion: nil)
    }
    
}
