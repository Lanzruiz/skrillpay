//
//  PresenterManager.swift
//  spay
//
//  Created by Lanz Ruiz on 10/29/22.
//

import UIKit

class PresenterManager {
    
    static let shared = PresenterManager()
    
    private init() {}
    
    enum VC {
        case mainTabBarController
        case loginController
    }
    
    func show(vc: VC){
        
        var viewController: UIViewController
        
        switch vc {
           case .mainTabBarController:
               viewController = UIStoryboard(name: Actions.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: Actions.StoryboardId.MainTabController)
            
           case .loginController:
               viewController = UIStoryboard(name: Actions.StoryboardId.main, bundle: nil).instantiateViewController(withIdentifier: Actions.StoryboardId.LoginViewController)
        }
        
    
        
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
             window.rootViewController = viewController
           
            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
}
