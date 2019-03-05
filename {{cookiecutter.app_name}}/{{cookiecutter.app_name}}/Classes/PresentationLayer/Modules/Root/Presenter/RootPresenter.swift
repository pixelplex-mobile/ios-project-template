//
//  RootRootPresenter.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on {% now 'local', '%d.%m.%Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{cookiecutter.company_name}}. All rights reserved.
//

import UIKit

enum AuthState {
    case unauth
    case varification
    case auth
}

class RootPresenter {
    weak var view: RootViewInput!
    weak var output: RootModuleOutput?
    
    var interactor: RootInteractorInput!
    var router: RootRouterInput!
}

// MARK: - RootModuleInput

extension RootPresenter: RootModuleInput {
  	var viewController: UIViewController {
    	return view.viewController
  	}
}

// MARK: - RootViewOutput

extension RootPresenter: RootViewOutput {
    func viewIsReady() {
    }
}

// MARK: - RootInteractorOutput

extension RootPresenter: RootInteractorOutput {
}
