//
//  CancelInviteScreen.swift
//  BlinqCodeChallengev3
//
//  Created by Chrishane Amarasekara on 20/2/2023.
//

import UIKit

class CancelInviteScreen: UIViewController {

    let backgroundImageView = UIImageView()
    let heading = UILabel()
    let message = UILabel()
    let requestButton = UIButton()
    let confettiGIF = UIImage.gifImageWithName("Rain")

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        setMessage()
        setupButton()
        view.backgroundColor = .white
    }
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = confettiGIF
    }
    
    func setMessage() {
        view.addSubview(message)
        
        message.text = "Your invite has been cancelled Sorry to see you go 😭"
        message.backgroundColor = .white
        message.textAlignment = .center
        message.numberOfLines = 2
        
        message.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            message.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            message.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            message.widthAnchor.constraint(equalToConstant: 300),
            message.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupButton() {
        view.addSubview(requestButton)

        requestButton.configuration = .filled()
        requestButton.configuration?.baseBackgroundColor = .systemGreen
        requestButton.configuration?.title = "Dismiss"

        requestButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)

        requestButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            requestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            requestButton.centerYAnchor.constraint(equalTo: message.centerYAnchor, constant: 80),
            requestButton.widthAnchor.constraint(equalToConstant: 200),
            requestButton.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    @objc func goToNextScreen() {
        let nextScreen = PreRequestScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
