//
//  plantdocApp.swift
//  plantdoc
//
//  Created by Diva Ariani on 22/02/24.
//

import SwiftUI

@main
struct plantdocApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}

struct LoginView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> LoginViewController {
        return LoginViewController()
    }

    func updateUIViewController(_ uiViewController: LoginViewController, context: Context) {
        // Update the view controller if needed
    }
}
