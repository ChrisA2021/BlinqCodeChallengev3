//
//  PreRequestScreen.swift
//  BlinqCodeChallengev3
//
//  Created by Chrishane Amarasekara on 19/2/2023.
//

import UIKit

class PreRequestScreen: UIViewController {
    
    let backgroundImageView = UIImageView()
    let heading = UILabel()
    let instruction = UILabel()
    let requestButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        setInstruction()
        setupButton()
        setHeading()
        view.backgroundColor = .systemBackground
    }
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "Background")
    }
    
    func setHeading() {
        view.addSubview(heading)
        
        heading.text = "Broccoli & Co."
        heading.backgroundColor = .white
        heading.textAlignment = .center
        
        heading.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heading.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heading.centerYAnchor.constraint(equalTo: instruction.centerYAnchor, constant: -80),
            heading.widthAnchor.constraint(equalToConstant: 200),
            heading.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setInstruction() {
        view.addSubview(instruction)
        
        instruction.text = "Please click below to request an invite!"
        instruction.backgroundColor = .white
        
        instruction.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            instruction.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instruction.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            instruction.widthAnchor.constraint(equalToConstant: 300),
            instruction.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupButton() {
        view.addSubview(requestButton)
        
        requestButton.configuration = .filled()
        requestButton.configuration?.baseBackgroundColor = .systemGreen
        requestButton.configuration?.title = "Request an Invite"
        
        requestButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        requestButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            requestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            requestButton.centerYAnchor.constraint(equalTo: instruction.centerYAnchor, constant: 80),
            requestButton.widthAnchor.constraint(equalToConstant: 200),
            requestButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goToNextScreen() {
        let nextScreen = RequestFormScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
        //Couldn't get app to work properly with modal views
//        navigationController?.present(nextScreen, animated: true)

    }


}

