//
//  PreCancelScreen.swift
//  BlinqCodeChallengev3
//
//  Created by Chrishane Amarasekara on 20/2/2023.
//

import UIKit

class PreCancelScreen: UIViewController {

    let backgroundImageView = UIImageView()
    let heading = UILabel()
    let instruction = UILabel()
    let requestButton = UIButton()
    var cancelInvite = false

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
        
        instruction.text = "If you would like to cancel your invite please click below"
        instruction.backgroundColor = .white
        instruction.numberOfLines = 2
        instruction.textAlignment = .center
        
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
        requestButton.configuration?.baseBackgroundColor = .systemRed
        requestButton.configuration?.title = "Cancel your Invite"
        
//        requestButton.addTarget(self, action: #selector(goToRequestFormScreen), for: .touchUpInside)
        
        requestButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            requestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            requestButton.centerYAnchor.constraint(equalTo: instruction.centerYAnchor, constant: 80),
            requestButton.widthAnchor.constraint(equalToConstant: 200),
            requestButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        requestButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    
    }
    
    @objc func goToNextScreen() {
        
        let nextScreen = CancelInviteScreen()
        
        let alert = UIAlertController(title: "Are you sure you would like to cancel your invite", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Yes", comment: "Cancel Invite"), style: .default, handler: { _ in
        NSLog("The \"cancel invite\" alert occured.")
        self.cancelInvite = true
        self.navigationController?.pushViewController(nextScreen, animated: true)
            }))
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("No, I changed my mind", comment: "Do not cancel invite"), style: .default, handler: { _ in
        NSLog("The \"cancel invite\" alert occured.")
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }

}
