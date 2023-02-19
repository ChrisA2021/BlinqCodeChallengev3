//
//  RequestFormScreen.swift
//  BlinqCodeChallengev3
//
//  Created by Chrishane Amarasekara on 19/2/2023.
//

import UIKit

class RequestFormScreen: UIViewController {
    
    let heading = UILabel()
    
    let nameInput = UITextField()
    let emailInput = UITextField()
    let confirmEmailInput = UITextField()
    
    let nameError = UILabel()
    let emailError = UILabel()
    let confirmEmailError = UILabel()
    
    let requestInviteButton = UIButton()
    let requestMessage = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNameInput()
        setNameError()
        setEmailInput()
        setEmailError()
        setConfirmEmailInput()
        setConfirmEmailError()
        setHeading()
        setButton()
        view.backgroundColor = .systemBackground
    }
    
    func setNameInput() {
        view.addSubview(nameInput)
        
        nameInput.placeholder = "Full Name"
        nameInput.textAlignment = .left
        nameInput.borderStyle = .roundedRect
        
        nameInput.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameInput.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            nameInput.widthAnchor.constraint(equalToConstant: 350),
            nameInput.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setNameError() {
        view.addSubview(nameError)
        
        nameError.text = "Please enter 3 or more characters"
        nameError.textAlignment = .left
        nameError.textColor = .systemRed
        nameError.isHidden = true
        
        nameError.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameError.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameError.centerYAnchor.constraint(equalTo: nameInput.centerYAnchor, constant: 40),
            nameError.widthAnchor.constraint(equalToConstant: 350),
            nameError.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setEmailInput() {
        view.addSubview(emailInput)
        
        emailInput.placeholder = "Email"
        emailInput.textAlignment = .left
        emailInput.borderStyle = .roundedRect

        
        emailInput.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailInput.centerYAnchor.constraint(equalTo: nameError.centerYAnchor, constant: 60),
            emailInput.widthAnchor.constraint(equalToConstant: 350),
            emailInput.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setEmailError() {
        view.addSubview(emailError)
        
        emailError.text = "Please enter a valid email"
        emailError.textAlignment = .left
        emailError.textColor = .systemRed
        emailError.isHidden = true

        emailError.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailError.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailError.centerYAnchor.constraint(equalTo: emailInput.centerYAnchor, constant: 40),
            emailError.widthAnchor.constraint(equalToConstant: 350),
            emailError.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setConfirmEmailInput() {
        view.addSubview(confirmEmailInput)
        
        confirmEmailInput.placeholder = "Confirm Email"
        confirmEmailInput.textAlignment = .left
        confirmEmailInput.borderStyle = .roundedRect

        
        confirmEmailInput.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmEmailInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmEmailInput.centerYAnchor.constraint(equalTo: emailError.centerYAnchor, constant: 60),
            confirmEmailInput.widthAnchor.constraint(equalToConstant: 350),
            confirmEmailInput.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setConfirmEmailError() {
        view.addSubview(confirmEmailError)
        
        confirmEmailError.text = "Emails do not match, please try again"
        confirmEmailError.textAlignment = .left
        confirmEmailError.textColor = .systemRed
        confirmEmailError.isHidden = true

        confirmEmailError.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            confirmEmailError.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmEmailError.centerYAnchor.constraint(equalTo: confirmEmailInput.centerYAnchor, constant: 40),
            confirmEmailError.widthAnchor.constraint(equalToConstant: 350),
            confirmEmailError.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setHeading() {
        view.addSubview(heading)
        
        heading.text = "Please enter your details"
        heading.textAlignment = .left
        
        heading.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heading.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heading.centerYAnchor.constraint(equalTo: nameInput.centerYAnchor, constant: -50),
            heading.widthAnchor.constraint(equalToConstant: 350),
            heading.heightAnchor.constraint(equalToConstant: 50)
        ])

    }
    
    func setRequestMessage(message: String) {
        view.addSubview(requestMessage)
        
        requestMessage.text = message
        requestMessage.textAlignment = .left
        requestMessage.isHidden = true

        requestMessage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            requestMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            requestMessage.centerYAnchor.constraint(equalTo: requestInviteButton.centerYAnchor, constant: 40),
            requestMessage.widthAnchor.constraint(equalToConstant: 350),
            requestMessage.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    
//    func setInstruction() {
//        view.addSubview(instruction)
//
//        instruction.text = "Please click below to request an invite!"
//        instruction.backgroundColor = .white
//
//        instruction.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            instruction.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            instruction.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            instruction.widthAnchor.constraint(equalToConstant: 300),
//            instruction.heightAnchor.constraint(equalToConstant: 50)
//        ])
//    }
//
    func setButton() {
        view.addSubview(requestInviteButton)

        requestInviteButton.configuration = .filled()
        requestInviteButton.configuration?.baseBackgroundColor = .systemGreen
        requestInviteButton.configuration?.title = "Request Invite"

        requestInviteButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            requestInviteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            requestInviteButton.centerYAnchor.constraint(equalTo: confirmEmailError.centerYAnchor, constant: 80),
            requestInviteButton.widthAnchor.constraint(equalToConstant: 200),
            requestInviteButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        
        requestInviteButton.addTarget(self, action: #selector(goToRequestFormScreen), for: .touchUpInside)
        

    }
    
    func checkFormValid() -> Bool {
        if (nameInput.text?.count ?? 0 >= 3 && isEmailValid(emailStr: emailInput.text ?? "") && (confirmEmailInput.text == emailInput.text)) {
            return true
        }
        else {
            return false
        }
    }
    
    func isEmailValid(emailStr: String) -> Bool {
        let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegx)
        
        return emailTest.evaluate(with: emailStr)
    }

    @objc func goToRequestFormScreen() {
        
        let nenextScreen = RequestFormScreen()
        
        if (nameInput.text?.count ?? 0 < 3) {
            nameError.isHidden = false
        }
        else {
            nameError.isHidden = true
        }
        
        if (!isEmailValid(emailStr: emailInput.text ?? "")) {
            emailError.isHidden = false
        }
        else {
            emailError.isHidden = true
        }
        
        if (confirmEmailInput.text != emailInput.text) {
            confirmEmailError.isHidden = false
        }
        else {
            confirmEmailError.isHidden = true
        }
        
        if (checkFormValid()) {
            setRequestMessage(message: saveToServer(userName: nameInput.text ?? "", userEmail: emailInput.text ?? ""))
            
            if (requestMessage.text == "Registered") {
                performSegue(withIdentifier: "showCongratulationViewController", sender: self)
            }
        }
        
//        let nextScreen = RequestFormScreen()
//        navigationController?.pushViewController(nextScreen, animated: true)
    }


}
