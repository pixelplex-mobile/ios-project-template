//
//  ApplicationConfigurator.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by Fedorenko Nikita on 15.12.2017.
//  Copyright © 2017 PixelPlex. All rights reserved.
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
