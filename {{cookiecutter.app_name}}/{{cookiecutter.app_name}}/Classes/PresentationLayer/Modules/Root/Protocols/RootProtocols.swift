//
//  RootRootProtocols.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

import UIKit

protocol RootViewInput: class, Presentable {
    func setupInitialState()
}

protocol RootViewOutput {
    func viewIsReady()
}

protocol RootModuleInput: class {
	var viewController: UIViewController { get }
	var output: RootModuleOutput? { get set }
}

protocol RootModuleOutput: class {
}

protocol RootInteractorInput {
}

protocol RootInteractorOutput: class {
}

protocol RootRouterInput {
}
