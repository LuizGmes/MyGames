//
//  SignInViewController.swift
//  MyGames
//
//  Created by Luiz Gomes on 18/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    private var containerViewLeadingConstraint: NSLayoutConstraint?
        private var containerViewWidthConstraint: NSLayoutConstraint?

        override func viewDidLoad() {
            super.viewDidLoad()

            configureButton()
            configureHorizontalPadding()
        }

    }

    // MARK: Configuration methods
    extension SignInViewController {

        private func configureButton() {
            signInButton.layer.cornerRadius = 4
        }

        private func configureHorizontalPadding() {
            containerViewLeadingConstraint = containerView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 8)
            containerViewLeadingConstraint?.isActive = true
        }

        private func configureWidthConstraint() {
            if containerViewWidthConstraint == nil {
                containerViewWidthConstraint = containerView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5)
            }

            containerViewWidthConstraint?.isActive = true
        }
    }

