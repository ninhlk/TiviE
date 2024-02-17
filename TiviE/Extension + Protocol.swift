//
//  Extension + Protocol.swift
//  TiviE
//
//  Created by Ninh Lê on 02/02/2024.
//

import UIKit

protocol NextToScreen {
    func nextToScreen()
}

//MARK: extension UITableView
extension UITableView {
    func setUpTableView(
        with source: UITableViewDataSource & UITableViewDelegate,
        types: [UITableViewCell.Type]) {
            dataSource = source
            delegate = source
            types.forEach { cellType in
                let cellID = String(describing: cellType)
                register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
            }
        }
    
    func setUpTableView(
        with source: UITableViewDataSource,
        types: [UITableViewCell.Type]) {
            dataSource = source
            types.forEach { cellType in
                let cellID = String(describing: cellType)
                register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
            }
        }
    
    func reuseCell<T: UITableViewCell>(cell: T.Type) -> T {
        let cellID = String(describing: cell)
        return dequeueReusableCell(withIdentifier: cellID) as! T
    }
}

//MARK: extension UIViewController
extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}

//MARK: extension UIImageView
//extension UIImageView {
//
//    func setImageFromStringrURL(stringUrl: String) {
//        if let url = URL(string: stringUrl) {
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//          // Error handling...
//          guard let imageData = data else { return }
//
//          DispatchQueue.main.async {
//            self.image = UIImage(data: imageData)
//          }
//        }.resume()
//      }
//    }
//}
