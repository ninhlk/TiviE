//
//  ViewController.swift
//  TiviE
//
//  Created by Ninh Lê on 05/01/2024.
//

import UIKit

extension UIImageView {

    func setImageFromStringrURL(stringUrl: String) {
        if let url = URL(string: stringUrl) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
          // Error handling...
          guard let imageData = data else { return }

          DispatchQueue.main.async {
            self.image = UIImage(data: imageData)
          }
        }.resume()
      }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var yourAcc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // khi click nút login
    @IBAction func siginButtonClicked(_ sender: Any) {
        
        userName = yourAcc.text ?? ""

        if userName == "ninhlk" {
            let homeScreen = storyboard?.instantiateViewController(withIdentifier: "Tab bar controller") as! UITabBarController
            self.present(homeScreen, animated: true, completion: nil)
        }
        else 
        {
            let emailAlert = UIAlertController(title: "Thông báo", message: "Vui lòng kiểm tra lại thông tin tài khoản hoặc mật khẩu", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "OK", style: .default)
            emailAlert.addAction(actionOK)
            self.present(emailAlert, animated: true)
        }
    }
    
    
}

