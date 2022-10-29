//
//  DashboardViewController.swift
//  spay
//
//  Created by Lanz Ruiz on 10/25/22.
//

import UIKit

class DashboardViewController: UIViewController {
    
    override func viewDidLoad() {
       super.viewDidLoad()
       setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
    }
   
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem){
        
        let loginViewController = UIStoryboard(name: Actions.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: Actions.StoryboardId.LoginViewController)
        
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
             window.rootViewController = loginViewController
           
            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
}
