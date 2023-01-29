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
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Background-Bubbles")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("TRUE", for: .normal)
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        return button
    }()
    
    let buttonFalse: UIButton = {
        let button = UIButton()
        button.setTitle("FALSE", for: .normal)
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        return button
    }()
    
    var label: UILabel = {
        let label = UILabel()
        label.text = "Question Text"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .left
        return label
    }()
    
    let progressView = UIView()
    
    var progressBar: UIProgressView {
        let progressBar = UIProgressView()
        progressBar.progress = 0.5
        progressBar.trackTintColor = .white
        progressBar.progressTintColor = #colorLiteral(red: 1, green: 0.4585417509, blue: 0.6605013609, alpha: 1)
        progressBar.progressViewStyle = .bar
        return progressBar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0.1923559308, green: 0.2327082157, blue: 0.3624993563, alpha: 1)
        view.addSubview(stackView)
        view.addSubview(image)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(buttonFalse)
        stackView.addArrangedSubview(progressView)
        progressView.addSubview(progressBar)
        progressView.backgroundColor = .white
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            image.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 102)
        ])
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        buttonFalse.translatesAutoresizingMaskIntoConstraints = false
        buttonFalse.heightAnchor.constraint(equalToConstant: 80).isActive = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.heightAnchor.constraint(equalToConstant: 10).isActive = true
//        progressView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        progressView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        progressView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        progressBar.transform = CGAffineTransformScale(progressBar.transform, 10, progressView.bounds.width)
        
    }

}
