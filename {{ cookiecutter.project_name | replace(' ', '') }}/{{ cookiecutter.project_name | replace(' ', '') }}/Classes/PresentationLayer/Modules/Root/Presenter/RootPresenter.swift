//
//  RootRootPresenter.swift
//  {{ cookiecutter.project_name | replace(' ', '') }}
//
//  Created by Fedorenko Nikita on 19/03/2018.
//  Copyright © 2018 PixelPlex. All rights reserved.
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
