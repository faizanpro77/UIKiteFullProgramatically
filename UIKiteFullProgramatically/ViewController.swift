//
//  ViewController.swift
//  UIKiteFullProgramatically
//
//  Created by MD Faizan on 07/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.text = "register"
        label.font = UIFont(name: "CourierNewPS-BoldMT", size: 40)
        return label
    }()
    
     private let nameTextField: UITextField = {
         
         return UITextField().textFeild(withPlaceHolder: "Name")
//       let tf = UITextField()
//        tf.borderStyle = .none
//        tf.font = UIFont.systemFont(ofSize: 20)
//        tf.backgroundColor = .white
//        tf.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
//        return tf
    }()
    
    private let addressTextField:UITextField = {
        return UITextField().textFeild(withPlaceHolder: "Address")
        
    }()
    
    private let placeTextField:UITextField = {
        
        return UITextField().textFeild(withPlaceHolder: "Place")
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return button
    }()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        //MARK: function for  alignment
        titleLable.centerX(inView: view)
        titleLable.anchor(top: view.safeAreaLayoutGuide.topAnchor)
//        view.addSubview(nameTextField)
//        nameTextField.centerX(inView: view)
//        nameTextField.anchor(top: titleLable.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, topPadding: 20, leftPadding: 40, rightPadding: 40)
        
        let stack = UIStackView(arrangedSubviews: [nameTextField,addressTextField,placeTextField,saveButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        view.addSubview(stack)
        stack.anchor(top: titleLable.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, topPadding: 20, leftPadding: 40, rightPadding: 40)
        
        //        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
       
    }
    
    
    
    

  

}



/***
 
 
 NSLayoutConstraint.activate([
     button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
     button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
     button.widthAnchor.constraint(equalToConstant: 200),
     button.heightAnchor.constraint(equalToConstant: 50),
     
 ])
 
 */
