//
//  BaseViewController.swift
//  Reminus
//
//  Created by toannt on 03/02/2024.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    func pushVC(_ vc: UIViewController, animated: Bool = true) {
//        print("Push new VC: \(String.init(describing: vc.self))")
        navigationController?.pushViewController(vc, animated: animated)
    }
    
    func pop(animated: Bool = true) {
//        print("Did pop VC")
        navigationController?.popViewController(animated: animated)
    }

//    deinit {
//        print("Deinit \(String.init(describing: self.self))")
//    }
}
