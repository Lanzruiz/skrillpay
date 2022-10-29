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
        
        delay(durationInSeconds: 2.0) {
            self.showInitialView()
        }
        
    }
    
    private func setupViews() {
        
    }
    
    private func showInitialView() {
        
        // if user is logged in, => main tab bar controller
        // if user is not logged in => show onboarding controller
        
        if isUserLoggedIn {
            
            let mainTabBarController = UIStoryboard(name: Actions.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: Actions.StoryboardId.MainTabController)
            
            if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
               let window = sceneDelegate.window {
                 window.rootViewController = mainTabBarController
            }
           
            
        } else {
            performSegue(withIdentifier: Actions.Segue.showOnboardingScreen, sender: nil)
        }
    }
}
