//
//  LoginView.swift
//  plantdoc
//
//  Created by Diva Ariani on 22/02/24.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "PlantDoc"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    let passwordToggleVisibilityButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.tintColor = UIColor.systemGray
        button.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let loginButton: UIButton = {
            let button = UIButton()
            button.setTitle("Login", for: .normal)
            button.backgroundColor = UIColor(red: 0.8, green: 0.84, blue: 0.68, alpha: 1.0)
            button.setTitleColor(UIColor.black, for: .normal)
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor(red: 0.8, green: 0.84, blue: 0.68, alpha: 1.0).cgColor
            button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(logoImageView)
        view.addSubview(titleLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordToggleVisibilityButton)
        view.addSubview(loginButton)

        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),

            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordToggleVisibilityButton.leadingAnchor, constant: -8),

            passwordToggleVisibilityButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            passwordToggleVisibilityButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordToggleVisibilityButton.widthAnchor.constraint(equalToConstant: 24),
            passwordToggleVisibilityButton.heightAnchor.constraint(equalToConstant: 24),

            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
                        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                        loginButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

    @objc func togglePasswordVisibility() {
        passwordTextField.isSecureTextEntry.toggle()

        let imageName = passwordTextField.isSecureTextEntry ? "eye" : "eye.fill"
        passwordToggleVisibilityButton.setImage(UIImage(systemName: imageName), for: .normal)
    }

    @objc func loginButtonTapped() {
        print("Button Login Tapped")
    }
}
