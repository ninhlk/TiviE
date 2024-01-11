//
//  ViewController.swift
//  TiviE
//
//  Created by Ninh Lê on 05/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourAcc: UITextField!

    @IBOutlet weak var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func siginButtonClicked(_ sender: Any) {
        
        let text = yourAcc.text ?? ""
        let emailAlert = UIAlertController(title: "Thông báo", message: "Email chưa được đăng ký", preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "OK", style: .default)
        
        if text == "ninhlk" {
            self.performSegue(withIdentifier: "showHomeScreen", sender: nil)
            return
        } else {
            emailAlert.addAction(actionOK)
            self.present(emailAlert, animated: true)
            return
        }
    }
    
}

