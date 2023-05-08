//
//  Extensions.swift
//  UIKiteFullProgramatically
//
//  Created by MD Faizan on 08/05/23.
//

import UIKit

extension UIView {
    
    func centerX(inView view:UIView){
        
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                topPadding: CGFloat = 0,
                leftPadding: CGFloat = 0,
                rightPadding: CGFloat = 0,
                botttomPadding: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil)
    {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topPadding).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftPadding).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -rightPadding).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -botttomPadding).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
    }
    
}

extension UITextField {
    
    func textFeild(withPlaceHolder placeHolder: String) -> UITextField {
        
        let tf = UITextField()
         tf.borderStyle = .none
         tf.font = UIFont.systemFont(ofSize: 20)
         tf.backgroundColor = .white
         tf.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
         return tf
    }
    
}
