//
//  UserTab.swift
//  TiviE
//
//  Created by Ninh Lê on 06/02/2024.
//

import UIKit

class UserController: BaseViewController {
    @IBOutlet weak var customScrollView: CustomScrollView!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customScrollView.frame.size.height = tableView.frame.size.width / (16/9) + 50
        
    }
    
    
    
}
