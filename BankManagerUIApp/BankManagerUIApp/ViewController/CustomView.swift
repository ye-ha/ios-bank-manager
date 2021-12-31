//
//  CustomView.swift
//  BankManagerUIApp
//
//  Created by yeha on 2021/12/31.
//

import UIKit

class CustomView: UIView {
    let clientIdentifierLabel = UILabel()
    let taskTypeLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initializeView()
    }
    
    func initializeView() {
        setupLabel(label: clientIdentifierLabel, text: "고객번호 - ")
        setupLabel(label: taskTypeLabel, text: "업무타입")
        setupLabelConstraint()
    }
    
    func setupLabel(label: UILabel, text: String) {
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
    }
    
    func setupLabelConstraint() {
        clientIdentifierLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        clientIdentifierLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        clientIdentifierLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        clientIdentifierLabel.trailingAnchor.constraint(equalTo: taskTypeLabel.leadingAnchor).isActive = true
        taskTypeLabel.topAnchor.constraint(equalTo: clientIdentifierLabel.topAnchor).isActive = true
        taskTypeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
