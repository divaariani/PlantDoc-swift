//
//  Coordinator.swift
//  plantdoc
//
//  Created by Diva Ariani on 22/02/24.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIAdaptivePresentationControllerDelegate {
    var parent: LoginViewController?

    init(parent: LoginViewController) {
        self.parent = parent
    }
    
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        parent?.dismiss(animated: true, completion: nil)
    }
}
