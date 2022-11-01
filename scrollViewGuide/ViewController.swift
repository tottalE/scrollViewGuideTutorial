//
//  ViewController.swift
//  scrollViewGuide
//
//  Created by jin on 11/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
    }

    func setupScrollViewToSuperView() {
        
    }
    
    func setupContentViewToScrollView() {
        
    }
}

