//
//  ViewController.swift
//  CupDesignDemo
//
//  Created by Viktoriya Petushkova on 22.04.2023.
//

import UIKit
import CupDesignSystem

class ViewController: UIViewController {
    let block1: Block = {
        let block = Block()
        block.setHeader("Header")
        return block
    }()
    let block2: Block = {
        let block = Block()
        block.setHeader("Header")
        block.setSubheader("SubHeader")
        return block
    }()
    let block3: Block = {
        let block = Block()
        block.setHeader("Header")
        block.setSubheader("SubHeader")
        block.setButtonTitle("Button")
        return block
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        
        let contentStackView = UIStackView(arrangedSubviews: [block1, block2, block3])
        contentStackView.axis = .vertical
        contentStackView.distribution = .fill
        contentStackView.alignment = .fill
        contentStackView.spacing = 10
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentStackView)
        view.leftAnchor.constraint(equalTo: contentStackView.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: contentStackView.rightAnchor).isActive = true
        view.topAnchor.constraint(equalTo: contentStackView.topAnchor).isActive = true
        
    }
    
    


}

