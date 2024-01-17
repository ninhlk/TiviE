//
//  ViewController.swift
//  TiviE
//
//  Created by Ninh Lê on 05/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourAcc: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // khi click nút login
    @IBAction func siginButtonClicked(_ sender: Any) {
        
        let userName = yourAcc.text ?? ""
        let emailAlert = UIAlertController(title: "Thông báo", message: "Vui lòng kiểm tra lại thông tin tài khoản hoặc mật khẩu", preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "OK", style: .default)
        
        if userName == "ninhlk" {
            let homeScreen = storyboard?.instantiateViewController(withIdentifier: "HomeScreen") as! ViewControllerHome
            present(homeScreen, animated: true, completion: nil)

        } else {
            emailAlert.addAction(actionOK)
            self.present(emailAlert, animated: true)
        }
    }
    
    
}

