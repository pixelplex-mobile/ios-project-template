//
//  RootRootPresenter.swift
//  {{cookiecutter.app_name}}
//
//  Created by {{cookiecutter.lead_dev}} on 17.05.2018.
//  Copyright © 2018 {{cookiecutter.company_name}}. All rights reserved.
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
