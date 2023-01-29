//
//  ViewController.swift
//  Quizzler
//
//  Created by Aleksandra Asichka on 2023-01-29.
//

import UIKit

class ViewController: UIViewController {

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0.1923559308, green: 0.2327082157, blue: 0.3624993563, alpha: 1)
        view.addSubview(stackView)
        stackView.backgroundColor = .white
        setupConstraints()
    }

    func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }

}
