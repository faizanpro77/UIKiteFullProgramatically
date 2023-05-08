//
//  ButtonViewController.swift
//  UIKiteFullProgramatically
//
//  Created by MD Faizan on 07/05/23.
//

import UIKit

class ButtonViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //MARK: full Programatically button
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .systemOrange
        self.view.addSubview(button)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        //this is require for add the constraint
//        button.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            button.widthAnchor.constraint(equalToConstant: 200),
//            button.heightAnchor.constraint(equalToConstant: 50),
//
//        ])
        button.layer.cornerRadius = 25
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
    }
    
    var toggleValue = true
    @objc func buttonPressed() {
        
//        print("background color is change")
//        view.backgroundColor = .systemPink
        
//
        toggleValue.toggle()
        view.backgroundColor = toggleValue ? .systemPink : .white

//        if toggleValue {
//            view.backgroundColor  = .systemPink
////            toggleValue = false
//        }else{
//            view.backgroundColor = .white
////            toggleValue = true
//        }
    }
    
}
