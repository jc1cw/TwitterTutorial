//
//  ExploreController.swift
//  TwitterTutorial
//
//  Created by 정채원 on 2020/12/01.
//

import UIKit

class ExploreController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}

