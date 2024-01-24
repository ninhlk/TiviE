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
        
        if let id = id {
            titleLabel.text = arrayMovies[id].name
            let videoUrl: URL? = URL(string: arrayMovies[id].urlStr)

            if let videoUrl = videoUrl {
                let request: URLRequest = URLRequest(url: videoUrl)
                webViewPlay.load(request)
            }
        }

    }
    

}
