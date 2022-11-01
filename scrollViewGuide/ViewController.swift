//
//  ViewController.swift
//  scrollViewGuide
//
//  Created by jin on 11/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let contentView: UIStackView = UIStackView()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        fillStackView()
    }
    
    // set up stackview to vertical
    private func setupStackView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.axis = .vertical
    }
    
    // fillstackview with colors.
    private func fillStackView() {
        let colorArray = [UIColor.blue, .red, .yellow, .purple, .green, .black, .orange, .gray]
        for color in colorArray {
            let elementView = UIView()
            elementView.backgroundColor = color
            elementView.translatesAutoresizingMaskIntoConstraints = false
            elementView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            contentView.addArrangedSubview(elementView)
        }
    }
    
    func setupScrollViewToSuperView() {
        // you can write code here.
    }
    
    func setupContentViewToScrollView() {
        // you can write code here.
    }
    
    
    
}

