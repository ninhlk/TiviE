//
//  PlayerController.swift
//  TiviE
//
//  Created by Ninh Lê on 19/01/2024.
//

import UIKit
import WebKit

class PlayerController: UIViewController {
    @IBOutlet weak var webViewPlay: WKWebView!
    @IBOutlet weak var titleLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let rowID = rowID {
            titleLabel.text = arrayMovies[rowID].name
            let videoUrl: URL? = URL(string: arrayMovies[rowID].urlStr)

            if let videoUrl = videoUrl {
                let request: URLRequest = URLRequest(url: videoUrl)
                webViewPlay.load(request)
            }
        }

    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
