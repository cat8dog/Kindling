//
//  RoundedImageView.swift
//  Kindling
//
//  Created by Catherine Reyto on 2015-08-31.
//  Copyright (c) 2015 Catherine Reyto. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    
    override func awakeFromNib() {
     layer.cornerRadius = (bounds.size.width + bounds.size.height) / 4
     clipsToBounds = true
        
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
