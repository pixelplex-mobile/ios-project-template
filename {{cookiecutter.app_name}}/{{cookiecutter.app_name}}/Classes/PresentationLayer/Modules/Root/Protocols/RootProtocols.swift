//
//  RootRootProtocols.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
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
