//
//  RootRootViewController.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
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
