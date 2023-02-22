//
//  CongratulationsScreen.swift
//  BlinqCodeChallengev3
//
//  Created by Chrishane Amarasekara on 19/2/2023.
//

import UIKit

class CongratulationsScreen: UIViewController {

    let backgroundImageView = UIImageView()
    let heading = UILabel()
    let message = UILabel()
    let requestButton = UIButton()
    let confettiGIF = UIImage.gifImageWithName("Confetti")
    let defaults = UserDefaults.standard
    //Broccoli Image not working
    let broccoliImageView = UIImageView()
    let broccoliImage = UIImage(named: "HappyBroccoli")
//    let broccoliImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
//        setBroccoliImage()
        setMessage()
        setupButton()
        view.backgroundColor = .white
        defaults.set(true, forKey: "isUserRegistered")
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
    
    func setBroccoliImage() {
        view.addSubview(broccoliImageView)
        broccoliImageView.translatesAutoresizingMaskIntoConstraints = false
        broccoliImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        broccoliImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        broccoliImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        broccoliImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        broccoliImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8), resizingMode: .stretch)
        broccoliImageView.image = broccoliImage
    }

    
    func setMessage() {
        view.addSubview(message)
        
        message.text = "Congratulations your request has been sent to your email"
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
        let nextScreen = PreCancelScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }

}
