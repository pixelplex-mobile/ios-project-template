//
//  RootRootConfigurator.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
//

import UIKit
import Swinject

class RootModuleConfigurator {

    func configureModule () -> RootModuleInput {

        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(RootModuleInput.self)!
        
        return moduleInput
    }

}
