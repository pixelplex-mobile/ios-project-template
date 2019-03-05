//
//  ApplicationConfigurator.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
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
