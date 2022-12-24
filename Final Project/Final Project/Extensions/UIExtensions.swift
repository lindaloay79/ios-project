//
//  UIExtensions.swift
//  Final Project
//
//  Created by Linda Loay on 08/12/2022.
//

import UIKit

extension UIView{
   @IBInspectable  var cornerRadius: CGFloat {
       get{ return cornerRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
