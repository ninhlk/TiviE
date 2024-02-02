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
