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
        setupScrollViewToSuperView()
        scrollView.addSubview(contentView)
        setupContentViewToScrollView()
        setupStackView()
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
        NSLayoutConstraint.activate([
            scrollView.frameLayoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.frameLayoutGuide.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.frameLayoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.frameLayoutGuide.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func setupContentViewToScrollView() {
        NSLayoutConstraint.activate([
            scrollView.contentLayoutGuide.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            scrollView.contentLayoutGuide.topAnchor.constraint(equalTo: contentView.topAnchor),
            scrollView.contentLayoutGuide.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        scrollView.frameLayoutGuide.widthAnchor.constraint(equalTo: scrollView.contentLayoutGuide.widthAnchor)
.isActive = true

    }
    
    
    
}

