//
//  MoviesController.swift
//  TiviE
//
//  Created by Ninh Lê on 17/01/2024.
//

import UIKit

class MoviesController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Table View Cell Movie", for: indexPath) as! TableViewCell
        cell.buttonGenre.setTitle(genre[indexPath.row], for: .normal)
        return cell
    }
    
    
    
    
    
}
