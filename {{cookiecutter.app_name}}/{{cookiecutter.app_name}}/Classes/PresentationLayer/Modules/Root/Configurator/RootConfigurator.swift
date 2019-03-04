//
//  RootRootConfigurator.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
//

import Swinject
import UIKit

class RootModuleConfigurator {
    func configureModule () -> RootModuleInput {
        // swiftlint:disable force_unwrapping
        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(RootModuleInput.self)!
        return moduleInput
        // swiftlint:enable force_unwrapping
    }
}
