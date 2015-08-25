//
//  PictureView.swift
//  Kindling
//
//  Created by Catherine Reyto on 2015-08-25.
//  Copyright (c) 2015 Catherine Reyto. All rights reserved.
//

import UIKit

class PictureView: UIView {
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
