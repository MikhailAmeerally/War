//
//  RoundedButton.swift
//  War
//
//  Created by Mikhail Ameerally on 2018-01-09.
//  Copyright © 2018 Mikhail Ameerally. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton : UIButton
{
    @IBInspectable var cornerRadius : CGFloat = 0
    {
        didSet
        {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0
    {
        didSet
        {
            self.layer.borderWidth = borderWidth
        }
    }
    
   
}


