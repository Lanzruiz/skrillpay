//
//  LoadingViewController.swift
//  spay
//
//  Created by Lanz Ruiz on 10/24/22.
//

import UIKit


class LoadingViewController: UIViewController {
    
    private let isUserLoggedIn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showInitialView()
    }
    
    private func setupViews() {
        
    }
    
    private func showInitialView() {
        
        // if user is logged in, => main tab bar controller
        // if user is not logged in => show onboarding controller
        
        if isUserLoggedIn {
            
            let mainTabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBarController")
            
            let sceneDelegate = view.window?.windowScene?.delegate as! SceneDelegate
            let window = sceneDelegate.window
            window?.rootViewController = mainTabBarController
            
        } else {
            performSegue(withIdentifier: "showOnboarding", sender: nil)
        }
    }
}
