//
//  ApplicationConfigurator.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
//

import UIKit

class ApplicationConfigurator: ConfiguratorProtocol {
  
    func configure() {

        var rootView: UIViewController!

        let viewController = RootModuleConfigurator().configureModule().viewController
        rootView = viewController
        
        AppDelegate.currentWindow.rootViewController = rootView
    }
}
