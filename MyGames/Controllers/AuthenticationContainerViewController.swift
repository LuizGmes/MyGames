//
//  AuthenticationContainerViewController.swift
//  MyGames
//
//  Created by Luiz Gomes on 18/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import UIKit

class AuthenticationContainerViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    private lazy var portraitViewController: UIViewController? = {
            return UIStoryboard(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "myGamesLoginPortrait")
        }()

        private lazy var landscapeViewController: UIViewController? = {
            return UIStoryboard(name: "SignInLandscape", bundle: nil).instantiateInitialViewController()
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            configureNavigation()
            addChildController(child: portraitViewController)
            presentOnboarding()
        }

        override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
            if size.height > size.width {
                addChildController(child: portraitViewController)
            } else {
                addChildController(child: landscapeViewController)
            }
        }
    }

    private extension AuthenticationContainerViewController {

        func addChildController(child: UIViewController?) {
            guard let child = child else {
                return
            }

            child.view.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(child.view)
            configureChildConstraints(child: child.view)
        }

        func configureChildConstraints(child: UIView?) {
            child?.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
            child?.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
            child?.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
            child?.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        }

        func configureNavigation() {
            navigationController?.setNavigationBarHidden(true, animated: true)
        }

        func presentOnboarding() {
            navigationController?.present(OnboardingViewController(), animated: true)
        }
    }
