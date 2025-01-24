//
//  KeyboardViewController.swift
//  AnimalKeyboard
//
//  Created by Asim Roy on 24/01/25.
//

import SwiftUI

class KeyboardViewController: UIInputViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let myController = UIHostingController(
            rootView: AnimalKeyboardView(
                insertText: { [weak self] text in
                    guard let self else { return }
                    self.textDocumentProxy.insertText(text)
                }
            ))
        
        let animalKeyboardView = myController.view!
        animalKeyboardView.translatesAutoresizingMaskIntoConstraints = false

        self.addChild(myController)
        self.view.addSubview(animalKeyboardView)
        myController.didMove(toParent: self)

        NSLayoutConstraint.activate([
            animalKeyboardView.leftAnchor.constraint(equalTo: view.leftAnchor),
            animalKeyboardView.topAnchor.constraint(equalTo: view.topAnchor),
            animalKeyboardView.rightAnchor.constraint(equalTo: view.rightAnchor),
            animalKeyboardView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
