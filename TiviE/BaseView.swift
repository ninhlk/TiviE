//
//  BaseView.swift
//  Reminus
//
//  Created by toannt on 30/01/2024.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        if let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            addSubview(contentView)
            contentView.frame = bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
