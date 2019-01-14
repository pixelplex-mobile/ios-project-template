//
//  RootRootViewController.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by Fedorenko Nikita on 19/03/2018.
//  Copyright © 2018 PixelPlex. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var output: RootViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
}

// MARK: - RootViewInput

extension RootViewController: RootViewInput {
  
	func setupInitialState() {
    
  	}
  
}
