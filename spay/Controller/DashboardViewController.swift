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
        
        PresenterManager.shared.show(vc: .loginController)
        
    }
}
